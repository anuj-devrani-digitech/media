import { NextRequest, NextResponse } from "next/server";
import prisma from "../../../../../dbconfig/config";

export async function GET(request:NextRequest, { params }: { params: { id: string } } ) {
    const id = params.id;
   
    try {
        const data=await prisma.website_press_releases.findUnique({
            where:{
                website_press_release_id:parseInt(id)
                
            }
        })   
        return(
            NextResponse.json({
                data:data,
                message:id
            })
        )
    
    } catch (error) {
        return(
            NextResponse.json({
                message:"error "+error+" and the id is  : "+id
            })
        )
        
    }
    
}
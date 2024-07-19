import { NextRequest, NextResponse } from "next/server";
import prisma from "../../../../dbconfig/config";

export async function GET(reques: NextRequest) {
  try {
    const pressrelease = await prisma.website_press_releases.findMany({
      where: {
        is_published: 1,
      },
      orderBy: {
        sorting_index: "asc",
      },
    });
    return NextResponse.json(
      {
        message: pressrelease,
      },
      {
        status: 200,
        statusText: "ok report",
      }
    );
  } catch (error) {
    console.log("value of the error is : ", error);
    return NextResponse.json({
      message: "error :  " + error,
    });
  }
}
export async function  POST(request:NextRequest) {
  const {}=await request.json()


  try {
    return(
      NextResponse.json({
        message :"ok report "
      })
    )
  } catch (error) {
    
  }
  
}
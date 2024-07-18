
"use server"

import axios from "axios";
const APIKEY=process.env.APIKEY
import { methodsTypes } from "./serverUtility";


export const fetchData=async(method: methodsTypes,url:string,body?:string)=>{
    try {
        if(method==="POST"){
            

        }
        else if(method==="GET"){
            const response=await axios.get(`${APIKEY}/api/${url}`)
            return response.data
    
        }
        else if(method==="PUT"){
    
        }
        else if(method==="DELETE"){
    
        }
        
    } catch (error) {
        console.log("error is : ",error)
        return error
    }

    
}


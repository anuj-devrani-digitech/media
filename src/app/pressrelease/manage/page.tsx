import React from 'react'
import { customHttpMethods } from '@/actions/serverUtility'
import { fetchData } from '@/actions/serverAction'
import C_Table from '@/components/C_Componects/C_Table'
const page :React.FC = async() => {
  const data:any=await fetchData(customHttpMethods.get,"media-press")
 
  
  return (
  <>
    <C_Table data={data.data.message}/>
  </>
  )
}


export default  page

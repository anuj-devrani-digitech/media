import React from 'react'
import { customHttpMethods } from '@/actions/serverUtility'
import { fetchData } from '@/actions/serverAction'
import C_Table from '@/components/C_Componects/C_Table'
const page :React.FC = async() => {
  const data=await fetchData(customHttpMethods.get,"media-press")
  console.log("value of data is  ",data)
  return (
  <>
    <C_Table data={data.message}/>

  </>
  )
}


export default  page

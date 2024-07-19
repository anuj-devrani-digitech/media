"use client";
import React from "react";
import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import Link from "next/link";
const C_Table: React.FC<{ data: any }> = ({ data }) => {
  console.log("value of datsis : ",data)
  return (
    <>
      <Table>
        {/* <TableCaption>A list of your recent invoices.</TableCaption> */}
        <TableHeader>
          {/* <TableRow> */}
          {/* <TableHead className="w-[100px]">Invoice</TableHead>
            <TableHead>Status</TableHead>
            <TableHead>Method</TableHead>
            <TableHead className="text-right">Amount</TableHead> */}
          {/* </TableRow> */}

          <TableHead>S NO</TableHead>
          <TableHead>Image</TableHead>
          <TableHead>Title</TableHead>
          <TableHead>Created From</TableHead>
          <TableHead>Created Date</TableHead>
          <TableHead>Status</TableHead>

          <TableHead>Actions</TableHead>
        </TableHeader>
        <TableBody>
          {data?.map((item: any, index: number) => {
            return (
              <TableRow key={index}>
                <TableCell> {index + 1} </TableCell>
                <TableCell> {item.image_path} </TableCell>
                <TableCell> {item.title} </TableCell>
                <TableCell> {item.created_by} </TableCell>
                <TableCell> {item.created_by} </TableCell>
                <TableCell> {item.is_published} </TableCell>
                <TableCell> <Link href={{pathname:"/pressrelease/edit", query: { name: 'test'}}}  className="text-blue-950"> Edit </Link> <Link href={"/pressrelesae/delete"}  className="text-blue-950"> Delete </Link> </TableCell>

              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </>
  );
};




export default C_Table;


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
                <TableCell> <button className="text-blue-950">Edit</button> <button className="text-red">Delete</button> </TableCell>

              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </>
  );
};




export default C_Table;


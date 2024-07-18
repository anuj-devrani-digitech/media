export type methodsTypes = "GET" | "POST" | "PUT" | "DELETE";

export interface customHttpAttributes{
    get:methodsTypes,
    post:methodsTypes,
    put:methodsTypes,
    delete:methodsTypes
}

export const customHttpMethods:customHttpAttributes={
    get:"GET",
    post:"POST",
    put:"PUT",
    delete:"DELETE"
}
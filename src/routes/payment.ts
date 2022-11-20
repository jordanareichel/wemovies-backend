import { prisma } from "../lib/prisma";
import { FastifyInstance } from "fastify";
import { z } from "zod";


export async function paymenRoute(fastify: FastifyInstance) {
  fastify.post("/payment", {
  }, async (request, reply) => {

    const cartBody = z.object({
      value: z.string(),
    });

    const {value} = cartBody.parse(request.body);
   
    await prisma.payment.create({
      data: {
       value
      }
    })
  
    return reply.status(201).send();
  });

}
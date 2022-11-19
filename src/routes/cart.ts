import { prisma } from "../lib/prisma";
import { FastifyInstance } from "fastify";
import { z } from "zod";


export async function cartRoute(fastify: FastifyInstance) {
  fastify.post("/cart", {
  }, async (request, reply) => {

    const cartBody = z.object({
      code: z.string(),
      image: z.string(),
      title: z.string(),
      quantidade: z.number(),
      value: z.string(),
      subTotal: z.string(),
      total: z.string()
    });

    const {code, image, quantidade, title, value, subTotal, total} = cartBody.parse(request.body);

    const cart = await prisma.carts.findUnique({
      where: {
        code,
      },
    });

    if(cart?.code === code) {
      await prisma.carts.update({
        where: {
          code,
        }, 
        data: {
         code,
         image,
         quantidade, 
         subTotal, 
         title, 
         total, 
         value,
        }
      })
    } else {
      await prisma.carts.create({
        data: {
         code,
         image,
         quantidade, 
         subTotal, 
         title, 
         total, 
         value,
        }
      })
    }
  
    return reply.status(201).send();
  });

  fastify.get('/cart', async () => {
    const cart = await prisma.carts.findMany();

    return {cart}
  });

  fastify.delete("/cart/item/:code", {
  }, async (request, reply) => {

    const cartBody = z.object({
      code: z.string(),
    });

    const {code} = cartBody.parse(request.params);

    const cart = await prisma.carts.findUnique({
      where: {
        code,
      },
    });

    if(cart) {
      await prisma.carts.delete({
        where: {
          code
        }
      })
    }
   

    return reply.status(201).send();
  });

}
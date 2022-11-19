import { prisma } from "../lib/prisma";
import { FastifyInstance } from "fastify";


export async function products(fastify: FastifyInstance) {
  fastify.get('/products', async () => {
    const product = await prisma.products.findMany();

    return {product}
  });

}
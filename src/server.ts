
import Fastify from "fastify";
import { products } from "./routes/products";
import { cartRoute } from "./routes/cart";

import cors from '@fastify/cors';



async function start(){
  const fastify = Fastify({
    logger: true,

  });

  await fastify.register(cors, {
    origin: true,
  });


  await fastify.register(products);
  await fastify.register(cartRoute);


  await fastify.listen({port: 3333});
}

start();
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient()  
async function main() {

  const products = await prisma.products.create({
    data: {
      code: '1',
      title: "Viúva Negra",
      value: "9.99",
      image: "https://www.imagemhost.com.br/images/2022/07/10/viuva-negra.png"
    }
  })

}

main();
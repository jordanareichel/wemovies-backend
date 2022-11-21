import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient()  
async function main() {

  const productOne = await prisma.products.create({
    data: {
      code: '1',
      title: "Viúva Negra",
      value: "9.99",
      image: "https://www.imagemhost.com.br/images/2022/07/10/viuva-negra.png",
      color: '',
      amount: 0
    }
  });

  const productTwo = await prisma.products.create({
    data: {
      code: '2',
      title: "Shang-chi",
      value: "30.99",
      image: "https://www.imagemhost.com.br/images/2022/07/10/shang-chi.png",
      color: '',
      amount: 0
    }
  })

  const productThree = await prisma.products.create({
    data: {
      code: '3',
      title: "Homem Aranha",
      value: "29.9",
      image: "https://www.imagemhost.com.br/images/2022/07/10/spider-man.png",
      color: '',
      amount: 0
    }
  })

  const productFour = await prisma.products.create({
    data: {
      code: '4',
      title: "Eternos",
      value: "17.9",
      image: "https://www.imagemhost.com.br/images/2022/07/10/eternals.png",
      color: '',
      amount: 0
    }
  })

  const productFive = await prisma.products.create({
    data: {
      code: '5',
      title: "Morbius",
      value: "1.5",
      image: "https://www.imagemhost.com.br/images/2022/07/10/morbius-1.png",
      color: '',
      amount: 0
    }
  })

  const productSix = await prisma.products.create({
    data: {
      code: '6',
      title: "Batman",
      value: "21.9",
      image: "https://www.imagemhost.com.br/images/2022/07/10/the-batman.png",
      color: '',
      amount: 0
    }
  })

}

main();
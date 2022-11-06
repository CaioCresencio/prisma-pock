import express from 'express';
import {PrismaClient} from '@prisma/client';
const app = express();


const prisma = new PrismaClient({
  log:['query']
})
app.get('/tasks/count', async (req, res) => {
  const count = await prisma.task.count();
  res.json({count});
})

app.listen(3000, () => {
  console.log(`Example app listening on port ${3000}`)
})
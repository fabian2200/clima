import { createRouter, createWebHistory } from 'vue-router'
import dashboard from './components/admin/dashboard';
import nuevaVenta from './components/admin/nuevaVenta';
import ventaExistente from './components/admin/ventaExistente';
import clientes from './components/admin/clientes';
import miPerfil from './components/miPerfil';


const routes = [
  {
    path: '/dashboard',
    name: 'dashboard',
    component: dashboard
  },
  {
    path: '/:catchAll(.*)',
    redirect: '/'
  },
  {
    path: '/nueva-venta',
    name: 'nuevaVenta',
    component: nuevaVenta
  },
  {
    path: '/venta-existente',
    name: 'ventaExistente',
    component: ventaExistente
  },
  {
    path: '/clientes',
    name: 'clientes',
    component: clientes
  },
  {
    path: '/mi-perfil',
    name: 'miPerfil',
    component: miPerfil
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
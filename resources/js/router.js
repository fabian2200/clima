import { createRouter, createWebHistory } from 'vue-router'
import dashboard from './components/admin/dashboard';
import nuevaVenta from './components/admin/nuevaVenta';

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
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
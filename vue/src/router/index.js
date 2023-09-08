import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ToolsView from '../views/ToolsView.vue'
import ProceduresView from '../views/ProceduresView.vue'
import FormularyView from '../views/FormularyView.vue'
import ProtocolsView from  '../views/ProtocolsView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/tools',
    name: 'tools-view',
    component: ToolsView
  },
  {
    path: '/procedures',
    name: 'procedures-view',
    component: ProceduresView
  },
  {
    path: '/drugs',
    name: 'formulary-view',
    component: FormularyView
  },
  {
    path: '/protocols',
    name: 'protocols-view',
    component: ProtocolsView
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router

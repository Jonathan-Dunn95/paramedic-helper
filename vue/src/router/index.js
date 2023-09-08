import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ToolsView from '../views/ToolsView.vue'
import ProceduresView from '../views/ProceduresView.vue'
import FormularyView from '../views/FormularyView.vue'
import ProtocolsView from  '../views/ProtocolsView.vue'
import AdultCardiacView from '../views/AdultCardiacView.vue'
import AdultMedicalView from '../views/AdultMedicalView.vue'
import AdultOBView from '../views/AdultOBView.vue'
import AirwayRespiratory from '../views/AirwayRespView.vue'
import TriageDest from '../views/Triage&DestView.vue'
import PedsCardiac from '../views/PedsCardiacView.vue'
import PedsMedical from '../views/PedsMedicalView.vue'
import SpecialCirc from '../views/SpecialCircumstancesView.vue'
import SpecialOps from '../views/SpecialOpsView.vue'
import ToxicEnviron from '../views/Toxic&EnvironView.vue'
import TraumaBurn from '../views/Trauma&BurnView.vue'
import Universal from '../views/UniversalView.vue'

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
  {
    path: '/protocols/adult-cardiac',
    name: 'adult-cardiac',
    component: AdultCardiacView
  },
  {
    path: '/protocols/adult-medical',
    name: 'adult-medical',
    component: AdultMedicalView
  },
  {
    path: '/protocols/adult-obstetrical',
    name: 'adult-obstetrical',
    component: AdultOBView
  },
  {
    path: '/protocols/airway-respiratory',
    name: 'airway-respiratory',
    component: AirwayRespiratory
  },
  {
    path: '/protocols/triage-destination',
    name: 'triage-destination',
    component: TriageDest
  },
  {
    path: '/protocols/pediatric-cardiac',
    name: 'peds-cardiac',
    component: PedsCardiac
  },
  {
    path: '/protocols/pediatric-medical',
    name: 'peds-medical',
    component: PedsMedical
  },
  {
    path: '/protocols/special-circumstances',
    name: 'special-circ',
    component: SpecialCirc
  },
  {
    path: '/protocols/special-operations',
    name: 'special-ops',
    component: SpecialOps
  },
  {
    path: '/protocols/toxic-environmental',
    name: 'toxic-environ',
    component: ToxicEnviron
  },
  {
    path: '/protocols/trauma-burn',
    name: 'trauma-burn',
    component: TraumaBurn
  },
  {
    path: '/protocols/universal',
    name: 'universal',
    component: Universal
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router

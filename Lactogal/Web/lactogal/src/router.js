import Vue from 'vue'
import Router from 'vue-router'
import Feed from './views/Feed.vue'
import MyTasks from './views/MyTasks.vue'
import MyTasksCompleted from './views/MyTasksCompleted.vue'
import Login from './views/Login.vue'
import Register from './views/Register.vue'
//import bottomTabBar from './views/bottomTabBar.vue'


Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Feed',
      component: Feed
    },
    {
      path: '/login',
      name: 'login',
      component: Login
      
    },
    {
      path: '/register',
      name: 'register',
      component: Register
      
    },
    {
      path: '/my',
      name: 'mywaiting',
      component: MyTasks
      
    },
    {
      path:'/my/completed',
      name: 'mycompleted',
      component: MyTasksCompleted
    }
  ]
})

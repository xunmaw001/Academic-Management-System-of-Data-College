import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import xueshengzixun from '@/views/modules/xueshengzixun/list'
    import kechengzuoye from '@/views/modules/kechengzuoye/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import zixunhuifu from '@/views/modules/zixunhuifu/list'
    import kechengchengji from '@/views/modules/kechengchengji/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import banji from '@/views/modules/banji/list'
    import xueshengshenqing from '@/views/modules/xueshengshenqing/list'
    import kechengxinxi from '@/views/modules/kechengxinxi/list'
    import zhuanye from '@/views/modules/zhuanye/list'
    import xuankexinxi from '@/views/modules/xuankexinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/xueshengzixun',
        name: '学生咨询',
        component: xueshengzixun
      }
      ,{
	path: '/kechengzuoye',
        name: '课程作业',
        component: kechengzuoye
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/zixunhuifu',
        name: '咨询回复',
        component: zixunhuifu
      }
      ,{
	path: '/kechengchengji',
        name: '课程成绩',
        component: kechengchengji
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/banji',
        name: '班级',
        component: banji
      }
      ,{
	path: '/xueshengshenqing',
        name: '学生申请',
        component: xueshengshenqing
      }
      ,{
	path: '/kechengxinxi',
        name: '课程信息',
        component: kechengxinxi
      }
      ,{
	path: '/zhuanye',
        name: '专业',
        component: zhuanye
      }
      ,{
	path: '/xuankexinxi',
        name: '选课信息',
        component: xuankexinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;

import Vue from 'vue';
import Router from 'vue-router';

import pecriativo from '@/components/pecriativo';
import home from '@/components/home';
import seminarios from '@/components/seminarios'
import revista from '@/components/revista'
import radarabout from '@/components/radar/radarabout'
import Icon from '@/components/radar/radarmapa'
import eventoabout from '@/components/evento/eventoabout'

import login from '@/components/acesso/login'
import cadastrar from '@/components/acesso/cadastrar'

import painel from '@/components/painel/painel'
import cadastroradar from '@/components/painel/cadastroradar'
import painelradar from '@/components/painel/painelradar'


Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/',
            name: 'obecheader',
            component: home
        },
        {
            path: '/pecriativo',
            name: 'pecriativo',
            component: pecriativo
        },
        {
            path: '/seminarios',
            name: 'seminarios',
            component: seminarios
        },
        {
            path: '/revista',
            name: 'revista',
            component: revista
        },
        {
            path: '/radar/about',
            name: 'radarabout',
            component: radarabout
        },
        {
            path: '/evento/about',
            name: 'eventoabout',
            component: eventoabout
        },
        {
            path: '/radar/mapa',
            name: 'radarmapa',
            component: Icon
        },

        {
            path: '/login',
            name: 'login',
            component: login
        },
        {
            path: '/cadastrar',
            name: 'cadastrar',
            component: cadastrar
        },

        {
            path: '/painel',
            name: 'painel',
            component: painel,painelradar 
        },
        {
            path: '/cadastro/radar',
            name: 'cadastroradar',
            component: cadastroradar
        },
        {
            path: '/painel/radar',
            name: 'painelradar',
            component: painelradar
        },

        
        
    ],
});
<template>
    <div class="mywaiting">
        <h1 class="subheading grey--text">Minhas Tarefas</h1>

        <v-container class="my-3" >

           <v-card flat v-for="question in questions" :key="question.question">

             <v-layout row wrap :class="`pa-3 question ${question.status}`" >

             <v-flex xs12 md6>
               <div class="caption grey--text">Area</div>
               <div>{{question.question}}</div>
             </v-flex>

             <v-flex xs6 sm4 md2>
                <div class="caption grey--text">Colaborador</div>
               <div>{{question.person}}</div>
             </v-flex>

             <v-flex xs6 sm4 md2>
                <div class="caption grey--text">Data</div>
               <div>{{question.date}}</div>
             </v-flex>

             <v-flex xs6 sm4 md2>
                 <div>
                     <v-chip small :class="`${question.status} white--text caption my-2`">{{question.status}}</v-chip>
                 </div>
                
             </v-flex>
             </v-layout>

             <v-divider></v-divider>

           </v-card>

           <bottomTabBar/>
        </v-container>


    </div>




</template>

<script>

import bottomTabBar from '@/components/bottomTabBar'




export default {
    name: 'feed',

    components: {
    bottomTabBar,
    
    //v-for="link in links" :key="link.text" router :to="link.route"
  },

    methods:{
      created(){
        db.collection('').onSnapshot(res => {
          const changes = res.docChanges();

          
        })
      }
    },
    data(){
        return{
            questions:[
                {question: 'Posso tirar férias em Agosto?', person: 'Pedro Marcos', date:'3 de Jan 2019' , status:'waiting'},
                {question: 'Vencimento dos últimos 4 meses', person: 'Hugo Almeida', date:'3 de Jan 2019' , status:'waiting'},
                {question: 'Posso receber um aumento', person: 'Pedro Henrique', date:'3 de Jan 2019' , status:'waiting'},
                

            ]
        }
    }
    
}
</script>

<style>

.question.waiting
{
    border-left: 4px solid #FFC107;
}

.question.answered
{
    border-left: 4px solid #00E676;
}

.v-chip.waiting
{
    background: #FFC107;
}
</style>


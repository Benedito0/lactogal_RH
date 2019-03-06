<template>
    <div class="feed">
        <h1 class="subheading grey--text">Feed</h1>

        <v-container class="my-3">

           <v-card flat v-for="question in questions" :key="question.question">

             <v-layout row wrap :class="`pa-3 question ${question.status}`">
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

             <v-flex xs2 sm4 md2>
               <v-tooltip bottom>
                <template v-slot:activator="{ on }">
                  
                <div><v-btn small color="success" v-on="on" >ADD</v-btn></div>
                </template>
                <span>Adiciona para a sua area pessoal. Ficará encarregue em dar seguimento à esta questão</span>
              </v-tooltip>

                
             </v-flex>
             </v-layout>
            <v-divider></v-divider>
           </v-card>
        </v-container>


    </div>




</template>

<script>




export default {
    name: 'feed',


    methods:{/*
      created(){
        db.collection('').onSnapshot(res => {
          const changes = res.docChanges();


        })
      }*/
    },

    data(){
        return{
            questions:[
                {question: 'Posso receber um aumento', person: 'Pedro Marcos', date:'3 de Jan 2019' , status:'npicked'},
                {question: 'Recibo de Janeiro', person: 'Hugo Almeida', date:'3 de Jan 2019' , status:'npicked'},
                {question: 'Posso receber um aumento?', person: 'Pedro Henrique', date:'3 de Jan 2019' , status:'npicked'},
                

            ]
        }
    }
    
}
</script>

<style>

.question.npicked
{
    border-left: 4px solid #9E9E9E;
}


</style>
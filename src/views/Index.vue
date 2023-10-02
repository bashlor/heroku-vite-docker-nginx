<template>
    <div>
    <div>
    <a href="https://vitejs.dev" target="_blank">
      <img src="/vite.svg" class="logo" alt="Vite logo" />
    </a>
    <a href="https://vuejs.org/" target="_blank">
      <img src="./assets/vue.svg" class="logo vue" alt="Vue logo" />
    </a>
    </div>
    <HelloWorld msg="Vite + Vue Deployed on Heroku with Docker and Nginx" />
    <button><router-link to="/about">Go to About</router-link></button>
    </div>
</template>
<script setup lang="ts">
import HelloWorld from '../components/HelloWorld.vue'
</script>
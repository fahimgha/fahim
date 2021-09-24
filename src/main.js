import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
// importing AOS
import AOS from 'aos'
import 'aos/dist/aos.css'

createApp(App).use(router).mount('#app');
App.use(AOS.init(
  {
  duration:1000
  }
));

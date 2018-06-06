import Vue from 'vue';
import entry from './app';
import Leafkit from 'main/index.js';
import 'packages/theme-leaf/src/index.scss';

// import title from './i18n/title.json';

Vue.use(Leafkit);

// router.afterEach(route => {
//   const data = title[route.meta.lang];
//   for (let val in data) {
//     if (new RegExp('^' + val, 'g').test(route.name)) {
//       document.title = data[val];
//       return;
//     }
//   }
//   document.title = 'Leafkit';
// });

new Vue({ // eslint-disable-line
  render: h => h(entry)
}).$mount('#app');

<template>
    <div>
      <iframe ref="pdfIframe" style="width: 100%; height: 80vh" src='https://pdf2doc.com/es/' title=''></iframe>
    </div>
  </template>
  
  <script>
  export default {
    mounted() {
      this.$nextTick(() => {
        const iframe = this.$refs.pdfIframe;
        if (iframe && iframe.contentWindow) {
          iframe.contentWindow.scrollTo(0, 400); // Aquí puedes ajustar las coordenadas Y según tu necesidad
        }
      });
    }
  }
  </script>
  
  <style>
  /* Estilos opcionales para el componente */
  </style>
  
<template>
    <div>
        <Head>
            <title>Laravel</title>
        </Head>

        <h1>Laravel + InertiaJS + Vue + SCSS</h1>
        <p>See resources/js/Pages/Homepage.vue</p>
    </div>
</template>

<script>
    import { Head } from '@inertiajs/inertia-vue'

    export default {
        name: 'homepage',
        components: {
            Head,
        },
    }
</script>

<template>
    <div>
        <Head>
            <title>Laravel</title>
        </Head>

        <h1>PHP {{ phpVersion }} + Laravel {{ laravelVersion }} + InertiaJS + Vue + SCSS</h1>
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
        props: {
            laravelVersion: {
                type: String,
                default: null,
            },
            phpVersion: {
                type: String,
                default: null,
            },
        }
    }
</script>

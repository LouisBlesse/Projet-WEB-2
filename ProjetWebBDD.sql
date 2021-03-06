PGDMP     &    
            
    x            Projet    13.0    13.0     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16417    Projet    DATABASE     d   CREATE DATABASE "Projet" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE "Projet";
                postgres    false            ?            1259    16431 
   composants    TABLE     ?   CREATE TABLE public.composants (
    id integer NOT NULL,
    type text,
    marque text,
    nom text,
    prix integer,
    image text
);
    DROP TABLE public.composants;
       public         heap    postgres    false            ?            1259    16429    articles_ID_seq    SEQUENCE     ?   CREATE SEQUENCE public."articles_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."articles_ID_seq";
       public          postgres    false    203            ?           0    0    articles_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."articles_ID_seq" OWNED BY public.composants.id;
          public          postgres    false    202            ?            1259    16443    ordinateurs    TABLE     ?   CREATE TABLE public.ordinateurs (
    id integer NOT NULL,
    username text,
    cpu text,
    gpu text,
    refroidissement text,
    stockage text,
    alimentation text,
    ram text
);
    DROP TABLE public.ordinateurs;
       public         heap    postgres    false            ?            1259    16441    ordinateur_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ordinateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.ordinateur_id_seq;
       public          postgres    false    205            ?           0    0    ordinateur_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.ordinateur_id_seq OWNED BY public.ordinateurs.id;
          public          postgres    false    204            ?            1259    16420    users    TABLE     Z   CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16418    users_ID_seq    SEQUENCE     ?   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public          postgres    false    201            ?           0    0    users_ID_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users.id;
          public          postgres    false    200            2           2604    16434    composants id    DEFAULT     n   ALTER TABLE ONLY public.composants ALTER COLUMN id SET DEFAULT nextval('public."articles_ID_seq"'::regclass);
 <   ALTER TABLE public.composants ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            3           2604    16446    ordinateurs id    DEFAULT     o   ALTER TABLE ONLY public.ordinateurs ALTER COLUMN id SET DEFAULT nextval('public.ordinateur_id_seq'::regclass);
 =   ALTER TABLE public.ordinateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            1           2604    16423    users id    DEFAULT     f   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    16431 
   composants 
   TABLE DATA           H   COPY public.composants (id, type, marque, nom, prix, image) FROM stdin;
    public          postgres    false    203   k       ?          0    16443    ordinateurs 
   TABLE DATA           k   COPY public.ordinateurs (id, username, cpu, gpu, refroidissement, stockage, alimentation, ram) FROM stdin;
    public          postgres    false    205   ?       ?          0    16420    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    201   H       ?           0    0    articles_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."articles_ID_seq"', 15, true);
          public          postgres    false    202            ?           0    0    ordinateur_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ordinateur_id_seq', 3, true);
          public          postgres    false    204            ?           0    0    users_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."users_ID_seq"', 2, true);
          public          postgres    false    200            7           2606    16439    composants articles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.composants
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.composants DROP CONSTRAINT articles_pkey;
       public            postgres    false    203            9           2606    16451    ordinateurs ordinateur_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ordinateurs
    ADD CONSTRAINT ordinateur_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.ordinateurs DROP CONSTRAINT ordinateur_pkey;
       public            postgres    false    205            5           2606    16428    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            ?   a  x????n?0Ư???M/?6`??.M??Z?U??Ric?;?S۔?O???D_l?-ݦIY?p?????`us??x?s????}##????;i)?Vj??ڭ:?)6d3???ju?֛??;֖??%??î?`ieWg??m?O~
?̲ܦl?Ke??)?Nɲ?FC"? ?^?!?H?$	3<j?`??K?t????J|??ۼf???u????_??S^?????z?????,??2(!	X??0?}??h5??'?ES9???????0?5????k?Z&???s???ᢞ?\???}o?{*M???%X???<?_??c?T*??ǎ???H??փ4ou'j?Dh~?$绦??C??)?@:??~?eS?ț?X4|8`n?????1ݑ?G#|A?T<????????>8??_g
\???F񿝦?߅+N?v)????Y?َBae?(s?!!????]ͦ???0??h??? A?t?v??N??+?(?b?z?A??}???????y[:?i??dt?Q?/L8???W97[????&??i/?????~????O?B?DH????$?(?(?XAB??د??(?Q??;?;??N?      ?   \   x?3?4?4530??
?P06?0?,O,I-J?????KWH????47Pp-?W(?)-?????2"U???A9????{>?1H???AT?%	zc???? ??/?      ?   ?   x?3?4426?T1JR14P1s?L-5.?4?(*	?*N	??)?30?ϩ?/4??4/q7-?O)N*ʶ?JL???2?a
3???"?U?§?+;??U?22?0ܿ4+??)?2 (??'?4???*T/????0??4??P?+F??? ??)?     
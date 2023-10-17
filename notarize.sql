PGDMP     #        
            {           notarize    15.3    15.3 =    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    16398    notarize    DATABASE     |   CREATE DATABASE notarize WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Morocco.1252';
    DROP DATABASE notarize;
                postgres    false            �            1259    16399    annotations    TABLE     �   CREATE TABLE public.annotations (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    suffix character varying(255),
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.annotations;
       public         heap    postgres    false            �            1259    16462    annotations_seq    SEQUENCE     y   CREATE SEQUENCE public.annotations_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.annotations_seq;
       public          postgres    false            �            1259    16405    category    TABLE     �   CREATE TABLE public.category (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    name character varying(255),
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16404    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    216            O           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    215            �            1259    16411    clients    TABLE     C  CREATE TABLE public.clients (
    id bigint NOT NULL,
    address character varying(255),
    cin character varying(255),
    created_at timestamp(6) without time zone NOT NULL,
    date_of_birth timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    email character varying(255),
    marital_status character varying(255),
    name character varying(255),
    nationality character varying(255),
    occupation character varying(255),
    phone character varying(255),
    sex character varying(255),
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16463    clients_seq    SEQUENCE     u   CREATE SEQUENCE public.clients_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.clients_seq;
       public          postgres    false            �            1259    16495    model_annotations    TABLE     k   CREATE TABLE public.model_annotations (
    model_id bigint NOT NULL,
    annotation_id bigint NOT NULL
);
 %   DROP TABLE public.model_annotations;
       public         heap    postgres    false            �            1259    16421    models    TABLE     J  CREATE TABLE public.models (
    id bigint NOT NULL,
    archived boolean NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    name character varying(255),
    path character varying(255),
    updated_at timestamp(6) without time zone,
    sub_category_id bigint
);
    DROP TABLE public.models;
       public         heap    postgres    false            �            1259    16464 
   models_seq    SEQUENCE     t   CREATE SEQUENCE public.models_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.models_seq;
       public          postgres    false            �            1259    16429    roles    TABLE     W   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16428    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    220            P           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    219            �            1259    16436    subcategory    TABLE       CREATE TABLE public.subcategory (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    name character varying(255),
    updated_at timestamp(6) without time zone,
    category_id bigint NOT NULL
);
    DROP TABLE public.subcategory;
       public         heap    postgres    false            �            1259    16435    subcategory_id_seq    SEQUENCE     {   CREATE SEQUENCE public.subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.subcategory_id_seq;
       public          postgres    false    222            Q           0    0    subcategory_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.subcategory_id_seq OWNED BY public.subcategory.id;
          public          postgres    false    221            �            1259    16442 
   user_roles    TABLE     ^   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16448    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16447    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    225            R           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    224            �           2604    16408    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16432    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16439    subcategory id    DEFAULT     p   ALTER TABLE ONLY public.subcategory ALTER COLUMN id SET DEFAULT nextval('public.subcategory_id_seq'::regclass);
 =   ALTER TABLE public.subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16451    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            9          0    16399    annotations 
   TABLE DATA           U   COPY public.annotations (id, created_at, deleted_at, suffix, updated_at) FROM stdin;
    public          postgres    false    214   �F       ;          0    16405    category 
   TABLE DATA           P   COPY public.category (id, created_at, deleted_at, name, updated_at) FROM stdin;
    public          postgres    false    216   SG       <          0    16411    clients 
   TABLE DATA           �   COPY public.clients (id, address, cin, created_at, date_of_birth, deleted_at, email, marital_status, name, nationality, occupation, phone, sex, updated_at) FROM stdin;
    public          postgres    false    217   �G       H          0    16495    model_annotations 
   TABLE DATA           D   COPY public.model_annotations (model_id, annotation_id) FROM stdin;
    public          postgres    false    229   I       =          0    16421    models 
   TABLE DATA           o   COPY public.models (id, archived, created_at, deleted_at, name, path, updated_at, sub_category_id) FROM stdin;
    public          postgres    false    218   (I       ?          0    16429    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    220   �I       A          0    16436    subcategory 
   TABLE DATA           `   COPY public.subcategory (id, created_at, deleted_at, name, updated_at, category_id) FROM stdin;
    public          postgres    false    222   �I       B          0    16442 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    223   qJ       D          0    16448    users 
   TABLE DATA           >   COPY public.users (id, email, password, username) FROM stdin;
    public          postgres    false    225   �J       S           0    0    annotations_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.annotations_seq', 251, true);
          public          postgres    false    226            T           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 35, true);
          public          postgres    false    215            U           0    0    clients_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.clients_seq', 201, true);
          public          postgres    false    227            V           0    0 
   models_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.models_seq', 201, true);
          public          postgres    false    228            W           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    219            X           0    0    subcategory_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.subcategory_id_seq', 25, true);
          public          postgres    false    221            Y           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 25, true);
          public          postgres    false    224            �           2606    16403    annotations annotations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.annotations
    ADD CONSTRAINT annotations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.annotations DROP CONSTRAINT annotations_pkey;
       public            postgres    false    214            �           2606    16410    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    216            �           2606    16417    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    217            �           2606    16427    models models_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.models DROP CONSTRAINT models_pkey;
       public            postgres    false    218            �           2606    16434    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    220            �           2606    16441    subcategory subcategory_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.subcategory DROP CONSTRAINT subcategory_pkey;
       public            postgres    false    222            �           2606    16461 !   users uk6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    225            �           2606    16457 #   models uk_1uwfdyb0ubdcugjalatotlm23 
   CONSTRAINT     ^   ALTER TABLE ONLY public.models
    ADD CONSTRAINT uk_1uwfdyb0ubdcugjalatotlm23 UNIQUE (path);
 M   ALTER TABLE ONLY public.models DROP CONSTRAINT uk_1uwfdyb0ubdcugjalatotlm23;
       public            postgres    false    218            �           2606    16459 !   users ukr43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukr43af9ap4edm43mmtq01oddj6;
       public            postgres    false    225            �           2606    16446    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    223    223            �           2606    16455    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225            �           2606    16475 "   models fkbv79nr4vod9sf0eidqxhcd03h    FK CONSTRAINT     �   ALTER TABLE ONLY public.models
    ADD CONSTRAINT fkbv79nr4vod9sf0eidqxhcd03h FOREIGN KEY (sub_category_id) REFERENCES public.subcategory(id);
 L   ALTER TABLE ONLY public.models DROP CONSTRAINT fkbv79nr4vod9sf0eidqxhcd03h;
       public          postgres    false    222    3228    218            �           2606    16480 '   subcategory fke4hdbsmrx9bs9gpj1fh4mg0ku    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT fke4hdbsmrx9bs9gpj1fh4mg0ku FOREIGN KEY (category_id) REFERENCES public.category(id);
 Q   ALTER TABLE ONLY public.subcategory DROP CONSTRAINT fke4hdbsmrx9bs9gpj1fh4mg0ku;
       public          postgres    false    222    3218    216            �           2606    16485 &   user_roles fkh8ciramu9cc9q3qcqiv4ue8a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6;
       public          postgres    false    223    3226    220            �           2606    16490 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          postgres    false    3236    225    223            �           2606    16503 -   model_annotations fkmepaw7n4oh0l9a7nam0tixn4p    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_annotations
    ADD CONSTRAINT fkmepaw7n4oh0l9a7nam0tixn4p FOREIGN KEY (model_id) REFERENCES public.models(id);
 W   ALTER TABLE ONLY public.model_annotations DROP CONSTRAINT fkmepaw7n4oh0l9a7nam0tixn4p;
       public          postgres    false    229    218    3222            �           2606    16498 -   model_annotations fko6gpg20qe0tw3ooicg74xh4pn    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_annotations
    ADD CONSTRAINT fko6gpg20qe0tw3ooicg74xh4pn FOREIGN KEY (annotation_id) REFERENCES public.annotations(id);
 W   ALTER TABLE ONLY public.model_annotations DROP CONSTRAINT fko6gpg20qe0tw3ooicg74xh4pn;
       public          postgres    false    229    3216    214            9   �   x�e�;�@��Y�`r��Ni�q$dB0RFǊ�w5������C@q	�D>�6��f6�h�b��8N)�a��(���*mكǭyf���~I ��Xɨ��~��}���b)קԷ�K{�*�+2�8�YM]����i�R�-A�      ;   h   x�e�1�  �^�$mA*n���c$���0���p(H��#�i�xRN�Y���b=�Y^H�GD�������j��]�v�{����]K�W
5�ԾWR��m�      <   0  x����N� �k�������fQ�f��A˶f��]��w�j\�1K�⇜���6a�C�?���q� ��e(�f2�I���^)asC����pR,n�)��xoK�-c��&�C�[[�vͪ�m�w�:�ul�zͤ���\�E���(4^�p9�vLpl����� O�#
$�%��rۆ���*t刜� ��?�⣱�Xw�Y$��c����΃h�R6�S�Em �+�d��߭�0���w{��_�mY���5�P���FX"�g տ�� �H( �̨�5}
�5��}����!%9c��Ȳ���      H      x������ � �      =   W   x�35�L�4202�50�50S02�21�25�365056���t��+)J,QHIU�M,�LLO�L��I-�G�ȅH��'W��s��qqq vO�      ?   ,   x�3���q�v�2����C=�\��!\G_O?�=... o
�      A   �   x�]�1�0k��bݝs��@I�ƄX"�d���n���S���)qL,�.�N�G5��R�b.b��|��%�8�\H�,�/n?,b.�<�V���|.w��PL��e�@
5�gGg`}�&B!��T�I�5��E�cQ�Vk�b�2�      B      x�32�4�22�4����� �      D   �   x�e��B@ �}�Ζ�[��Aƨ���i�ː���t�{��>���򆖵���$�5U��T]^7��qF����ؚ�5+��[Y��37G�Y["���8��7C`J�hٳ�7��[�qA
M�e���(�8�|��$��{���TT,��<�F�׭&tWBN�:�     
PGDMP         7                 x            promoter %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) Q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17276    promoter    DATABASE     z   CREATE DATABASE promoter WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE promoter;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13043    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17473    atendimento    TABLE     �   CREATE TABLE public.atendimento (
    cod integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    descricao text,
    promotor_cod integer NOT NULL,
    tipo_atendimento_cod integer NOT NULL
);
    DROP TABLE public.atendimento;
       public         postgres    false    3            �            1259    17471    atendimento_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.atendimento_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.atendimento_cod_seq;
       public       postgres    false    3    209            �           0    0    atendimento_cod_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.atendimento_cod_seq OWNED BY public.atendimento.cod;
            public       postgres    false    208            �            1259    17448    celular    TABLE     �   CREATE TABLE public.celular (
    imei bigint NOT NULL,
    modelo character varying(255) NOT NULL,
    linha character varying(255),
    contagoogle character varying(255),
    status_celular_cod integer
);
    DROP TABLE public.celular;
       public         postgres    false    3            �            1259    17389    gerencia    TABLE     �   CREATE TABLE public.gerencia (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL,
    sigla character varying(255),
    gestor_cod integer
);
    DROP TABLE public.gerencia;
       public         postgres    false    3            �            1259    17381    gestor    TABLE     �   CREATE TABLE public.gestor (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL,
    telefone character varying(255),
    email character varying(255)
);
    DROP TABLE public.gestor;
       public         postgres    false    3            �            1259    17279    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         postgres    false    3            �            1259    17277    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public       postgres    false    3    197            �           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
            public       postgres    false    196            �            1259    17287    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         postgres    false    3            �            1259    17285    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public       postgres    false    199    3            �           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
            public       postgres    false    198            �            1259    17504 
   ocorrencia    TABLE       CREATE TABLE public.ocorrencia (
    cod integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    descricao text,
    promotor_cod integer NOT NULL,
    tipo_ocorrencia_cod integer NOT NULL,
    status_ocorrencia_cod integer
);
    DROP TABLE public.ocorrencia;
       public         postgres    false    3            �            1259    17502    ocorrencia_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.ocorrencia_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ocorrencia_cod_seq;
       public       postgres    false    3    213            �           0    0    ocorrencia_cod_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ocorrencia_cod_seq OWNED BY public.ocorrencia.cod;
            public       postgres    false    212            �            1259    17425    promotor    TABLE     �   CREATE TABLE public.promotor (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL,
    cidade character varying(255),
    roteiro boolean,
    supervisao_cod integer,
    status_cod integer
);
    DROP TABLE public.promotor;
       public         postgres    false    3            �            1259    17538    promotor_celular    TABLE     s   CREATE TABLE public.promotor_celular (
    promotor_cod integer,
    celular_imei bigint,
    data_entrega date
);
 $   DROP TABLE public.promotor_celular;
       public         postgres    false    3            �            1259    17420    status    TABLE     c   CREATE TABLE public.status (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL
);
    DROP TABLE public.status;
       public         postgres    false    3            �            1259    17443    status_celular    TABLE     k   CREATE TABLE public.status_celular (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL
);
 "   DROP TABLE public.status_celular;
       public         postgres    false    3            �            1259    17497    status_ocorrencia    TABLE     n   CREATE TABLE public.status_ocorrencia (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL
);
 %   DROP TABLE public.status_ocorrencia;
       public         postgres    false    3            �            1259    17402 
   supervisao    TABLE     �   CREATE TABLE public.supervisao (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL,
    sigla character varying(255),
    gerencia_cod integer NOT NULL,
    gestor_cod integer
);
    DROP TABLE public.supervisao;
       public         postgres    false    3            �            1259    17466    tipo_atendimento    TABLE     m   CREATE TABLE public.tipo_atendimento (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL
);
 $   DROP TABLE public.tipo_atendimento;
       public         postgres    false    3            �            1259    17492    tipo_ocorrencia    TABLE     l   CREATE TABLE public.tipo_ocorrencia (
    cod integer NOT NULL,
    nome character varying(255) NOT NULL
);
 #   DROP TABLE public.tipo_ocorrencia;
       public         postgres    false    3            +           2604    17476    atendimento cod    DEFAULT     r   ALTER TABLE ONLY public.atendimento ALTER COLUMN cod SET DEFAULT nextval('public.atendimento_cod_seq'::regclass);
 >   ALTER TABLE public.atendimento ALTER COLUMN cod DROP DEFAULT;
       public       postgres    false    208    209    209            )           2604    17282    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            *           2604    17290    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public       postgres    false    199    198    199            ,           2604    17507    ocorrencia cod    DEFAULT     p   ALTER TABLE ONLY public.ocorrencia ALTER COLUMN cod SET DEFAULT nextval('public.ocorrencia_cod_seq'::regclass);
 =   ALTER TABLE public.ocorrencia ALTER COLUMN cod DROP DEFAULT;
       public       postgres    false    213    212    213            �          0    17473    atendimento 
   TABLE DATA               q   COPY public.atendimento (cod, created_at, updated_at, descricao, promotor_cod, tipo_atendimento_cod) FROM stdin;
    public       postgres    false    209   B_       �          0    17448    celular 
   TABLE DATA               W   COPY public.celular (imei, modelo, linha, contagoogle, status_celular_cod) FROM stdin;
    public       postgres    false    206   __       �          0    17389    gerencia 
   TABLE DATA               @   COPY public.gerencia (cod, nome, sigla, gestor_cod) FROM stdin;
    public       postgres    false    201   d       �          0    17381    gestor 
   TABLE DATA               <   COPY public.gestor (cod, nome, telefone, email) FROM stdin;
    public       postgres    false    200   �d       �          0    17279    knex_migrations 
   TABLE DATA               J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public       postgres    false    197   g       �          0    17287    knex_migrations_lock 
   TABLE DATA               @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public       postgres    false    199   &h       �          0    17504 
   ocorrencia 
   TABLE DATA               �   COPY public.ocorrencia (cod, created_at, updated_at, descricao, promotor_cod, tipo_ocorrencia_cod, status_ocorrencia_cod) FROM stdin;
    public       postgres    false    213   Gh       �          0    17425    promotor 
   TABLE DATA               Z   COPY public.promotor (cod, nome, cidade, roteiro, supervisao_cod, status_cod) FROM stdin;
    public       postgres    false    204   dh       �          0    17538    promotor_celular 
   TABLE DATA               T   COPY public.promotor_celular (promotor_cod, celular_imei, data_entrega) FROM stdin;
    public       postgres    false    214   fs       �          0    17420    status 
   TABLE DATA               +   COPY public.status (cod, nome) FROM stdin;
    public       postgres    false    203   �v       �          0    17443    status_celular 
   TABLE DATA               3   COPY public.status_celular (cod, nome) FROM stdin;
    public       postgres    false    205   �v       �          0    17497    status_ocorrencia 
   TABLE DATA               6   COPY public.status_ocorrencia (cod, nome) FROM stdin;
    public       postgres    false    211   w       �          0    17402 
   supervisao 
   TABLE DATA               P   COPY public.supervisao (cod, nome, sigla, gerencia_cod, gestor_cod) FROM stdin;
    public       postgres    false    202   �w       �          0    17466    tipo_atendimento 
   TABLE DATA               5   COPY public.tipo_atendimento (cod, nome) FROM stdin;
    public       postgres    false    207   �y       �          0    17492    tipo_ocorrencia 
   TABLE DATA               4   COPY public.tipo_ocorrencia (cod, nome) FROM stdin;
    public       postgres    false    210   z       �           0    0    atendimento_cod_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.atendimento_cod_seq', 1, false);
            public       postgres    false    208            �           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 19, true);
            public       postgres    false    196            �           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
            public       postgres    false    198            �           0    0    ocorrencia_cod_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ocorrencia_cod_seq', 1, false);
            public       postgres    false    212            B           2606    17481    atendimento atendimento_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.atendimento
    ADD CONSTRAINT atendimento_pkey PRIMARY KEY (cod);
 F   ALTER TABLE ONLY public.atendimento DROP CONSTRAINT atendimento_pkey;
       public         postgres    false    209            >           2606    17455    celular celular_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.celular
    ADD CONSTRAINT celular_pkey PRIMARY KEY (imei);
 >   ALTER TABLE ONLY public.celular DROP CONSTRAINT celular_pkey;
       public         postgres    false    206            4           2606    17396    gerencia gerencia_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.gerencia
    ADD CONSTRAINT gerencia_pkey PRIMARY KEY (cod);
 @   ALTER TABLE ONLY public.gerencia DROP CONSTRAINT gerencia_pkey;
       public         postgres    false    201            2           2606    17388    gestor gestor_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.gestor
    ADD CONSTRAINT gestor_pkey PRIMARY KEY (cod);
 <   ALTER TABLE ONLY public.gestor DROP CONSTRAINT gestor_pkey;
       public         postgres    false    200            0           2606    17292 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public         postgres    false    199            .           2606    17284 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public         postgres    false    197            H           2606    17512    ocorrencia ocorrencia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ocorrencia_pkey PRIMARY KEY (cod);
 D   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT ocorrencia_pkey;
       public         postgres    false    213            :           2606    17432    promotor promotor_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.promotor
    ADD CONSTRAINT promotor_pkey PRIMARY KEY (cod);
 @   ALTER TABLE ONLY public.promotor DROP CONSTRAINT promotor_pkey;
       public         postgres    false    204            <           2606    17447 "   status_celular status_celular_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.status_celular
    ADD CONSTRAINT status_celular_pkey PRIMARY KEY (cod);
 L   ALTER TABLE ONLY public.status_celular DROP CONSTRAINT status_celular_pkey;
       public         postgres    false    205            F           2606    17501 (   status_ocorrencia status_ocorrencia_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.status_ocorrencia
    ADD CONSTRAINT status_ocorrencia_pkey PRIMARY KEY (cod);
 R   ALTER TABLE ONLY public.status_ocorrencia DROP CONSTRAINT status_ocorrencia_pkey;
       public         postgres    false    211            8           2606    17424    status status_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (cod);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public         postgres    false    203            6           2606    17409    supervisao supervisao_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.supervisao
    ADD CONSTRAINT supervisao_pkey PRIMARY KEY (cod);
 D   ALTER TABLE ONLY public.supervisao DROP CONSTRAINT supervisao_pkey;
       public         postgres    false    202            @           2606    17470 &   tipo_atendimento tipo_atendimento_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipo_atendimento
    ADD CONSTRAINT tipo_atendimento_pkey PRIMARY KEY (cod);
 P   ALTER TABLE ONLY public.tipo_atendimento DROP CONSTRAINT tipo_atendimento_pkey;
       public         postgres    false    207            D           2606    17496 $   tipo_ocorrencia tipo_ocorrencia_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipo_ocorrencia
    ADD CONSTRAINT tipo_ocorrencia_pkey PRIMARY KEY (cod);
 N   ALTER TABLE ONLY public.tipo_ocorrencia DROP CONSTRAINT tipo_ocorrencia_pkey;
       public         postgres    false    210            O           2606    17482 ,   atendimento atendimento_promotor_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendimento
    ADD CONSTRAINT atendimento_promotor_cod_foreign FOREIGN KEY (promotor_cod) REFERENCES public.promotor(cod);
 V   ALTER TABLE ONLY public.atendimento DROP CONSTRAINT atendimento_promotor_cod_foreign;
       public       postgres    false    204    2874    209            P           2606    17487 4   atendimento atendimento_tipo_atendimento_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendimento
    ADD CONSTRAINT atendimento_tipo_atendimento_cod_foreign FOREIGN KEY (tipo_atendimento_cod) REFERENCES public.tipo_atendimento(cod);
 ^   ALTER TABLE ONLY public.atendimento DROP CONSTRAINT atendimento_tipo_atendimento_cod_foreign;
       public       postgres    false    209    207    2880            N           2606    17456 *   celular celular_status_celular_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.celular
    ADD CONSTRAINT celular_status_celular_cod_foreign FOREIGN KEY (status_celular_cod) REFERENCES public.status_celular(cod);
 T   ALTER TABLE ONLY public.celular DROP CONSTRAINT celular_status_celular_cod_foreign;
       public       postgres    false    206    2876    205            I           2606    17397 $   gerencia gerencia_gestor_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerencia
    ADD CONSTRAINT gerencia_gestor_cod_foreign FOREIGN KEY (gestor_cod) REFERENCES public.gestor(cod);
 N   ALTER TABLE ONLY public.gerencia DROP CONSTRAINT gerencia_gestor_cod_foreign;
       public       postgres    false    200    201    2866            Q           2606    17513 *   ocorrencia ocorrencia_promotor_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ocorrencia_promotor_cod_foreign FOREIGN KEY (promotor_cod) REFERENCES public.promotor(cod);
 T   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT ocorrencia_promotor_cod_foreign;
       public       postgres    false    204    2874    213            S           2606    17523 3   ocorrencia ocorrencia_status_ocorrencia_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ocorrencia_status_ocorrencia_cod_foreign FOREIGN KEY (status_ocorrencia_cod) REFERENCES public.status_ocorrencia(cod);
 ]   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT ocorrencia_status_ocorrencia_cod_foreign;
       public       postgres    false    211    213    2886            R           2606    17518 1   ocorrencia ocorrencia_tipo_ocorrencia_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocorrencia
    ADD CONSTRAINT ocorrencia_tipo_ocorrencia_cod_foreign FOREIGN KEY (tipo_ocorrencia_cod) REFERENCES public.tipo_ocorrencia(cod);
 [   ALTER TABLE ONLY public.ocorrencia DROP CONSTRAINT ocorrencia_tipo_ocorrencia_cod_foreign;
       public       postgres    false    213    210    2884            U           2606    17546 6   promotor_celular promotor_celular_celular_imei_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotor_celular
    ADD CONSTRAINT promotor_celular_celular_imei_foreign FOREIGN KEY (celular_imei) REFERENCES public.celular(imei);
 `   ALTER TABLE ONLY public.promotor_celular DROP CONSTRAINT promotor_celular_celular_imei_foreign;
       public       postgres    false    214    2878    206            T           2606    17541 6   promotor_celular promotor_celular_promotor_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotor_celular
    ADD CONSTRAINT promotor_celular_promotor_cod_foreign FOREIGN KEY (promotor_cod) REFERENCES public.promotor(cod);
 `   ALTER TABLE ONLY public.promotor_celular DROP CONSTRAINT promotor_celular_promotor_cod_foreign;
       public       postgres    false    214    2874    204            M           2606    17438 $   promotor promotor_status_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotor
    ADD CONSTRAINT promotor_status_cod_foreign FOREIGN KEY (status_cod) REFERENCES public.status(cod);
 N   ALTER TABLE ONLY public.promotor DROP CONSTRAINT promotor_status_cod_foreign;
       public       postgres    false    203    204    2872            L           2606    17433 (   promotor promotor_supervisao_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotor
    ADD CONSTRAINT promotor_supervisao_cod_foreign FOREIGN KEY (supervisao_cod) REFERENCES public.supervisao(cod);
 R   ALTER TABLE ONLY public.promotor DROP CONSTRAINT promotor_supervisao_cod_foreign;
       public       postgres    false    2870    204    202            J           2606    17410 *   supervisao supervisao_gerencia_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisao
    ADD CONSTRAINT supervisao_gerencia_cod_foreign FOREIGN KEY (gerencia_cod) REFERENCES public.gerencia(cod);
 T   ALTER TABLE ONLY public.supervisao DROP CONSTRAINT supervisao_gerencia_cod_foreign;
       public       postgres    false    202    201    2868            K           2606    17415 (   supervisao supervisao_gestor_cod_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.supervisao
    ADD CONSTRAINT supervisao_gestor_cod_foreign FOREIGN KEY (gestor_cod) REFERENCES public.gestor(cod);
 R   ALTER TABLE ONLY public.supervisao DROP CONSTRAINT supervisao_gestor_cod_foreign;
       public       postgres    false    2866    202    200            �      x������ � �      �   �  x��Y�n$G=�_��UP�ܢD�\r��&����rd�_��L��ݮ��H��`#��TѪTz�����O?�.�|���������<��������?߾����ߞ�~y��=V�]5�H|�6C���5���zq5*�24D$KCfa���R���Z[xt���G��Ԑ��i�Ul�̃�RKo�����g<�=��<��Z�H��\\�*K�J3��<j�[������4���yf�%��&8F�/*�=��`�P�L�Q�:���!�$�А�KdGM��K£Q��4�-j튚5.���!:��&j�W|t��F�K�!Gy�l�Ok��՚UsJ�6�����.��1��V�{TE{�(8�ш�>R�4�W�H{��f~-�5g�율6�?�������_�'>�$g��vjG���M�`_�ע�1�6�׼��Z��=�d]:���V�6��"�R{��H#.�귋G�-9;����j�m�������4b�$�!���� �!�E{��*B-$D��������QaLl��J$�?Q"�!���q�z�P�j:��W�Ch��4��#j!"qB6�H����Fn�o{��Qn5���[���"bY�C��	��3���y��F�.BgM�#������T��Z4�؆C�i��p�/:�]�*a�� CF6z�#��c�7�GCUs�8!�}�G����G7�Uݯ���9��z?Q0@"�Cz��Z+S�F�^����<R��b���"�=����ȅF��ׇ��`(�pf�^0�͎�h��9$���WcÑ��FK;4TC�x��R�:
��A&��xB�QE�%b�]�BAb4�C�a�X�pJhu��	�c����
g��@h�]���Eo��!i��>-Ɲ-��t���x�������Ddy����J�!�{���	��p{,�)#��}��.)�-{���[Ml؉�p��3�_��y��U����ǄQ������g��>Sm뉧�{+^jF����x���X��Bj����~�������[��t��1jb��pf��蝬!,�h?k ���_E���sY��<R�&�����]�(��-<�1Bd�VlʜX֭nG���k�E�C�y�dL�C�� د��׬������HȄΦ��ZI(6�ҏ�8�dA3m[Ilk��v_O����>?=>>� il�      �   �   x�uQK��0]ۧ�	�&L�.�h��D6��2��`v���}��_���HLgo�С�0F����9F��A��yj��-8��!$]$����Ft�����������Df�Jݘ��$E�P(��!�U	<z9ͬ4E�di�d�=�c�u1�;4U�#��$�My�hJ`�J����Sy}��V����$1��Am;�=(���˶S�8F�?D�=Sp7      �   �  x���Kn�0E��*��D��$��� @�"���hPb!�.��d-�X���:U�г���}.�uì��w��R5#�ld���������hk�7���W�F�!̇Ϩz҇^��_������_�{'q^�mYU1jH�M�wpt���hr����KY��;xē'l7Ҡ�~fsրGK�b#aX]��[,Ю��s$�QW��6�	A'f7%�t��%���z�v�5aR�P�	񯅴hg-���j"��ˬ `�����>VMrTM#B��Z����Jt��U�T>x���a�F��c�~�frC~~�ҧ[��\w��l�
};���N��$��+�t2��9.v�M�+�BJ��Kɢ"�:kN�}�3�>i�5�E���p8��F��R0kЍΜ֚D�XǴ������)L�O8��5��������Q�Q"�	kۛ�^�y�>�[���z�X�h��D)�Y���f'c��@��      �     x���[n� ��q��!�����1�4632������D�$�_8}!  	L�̦jz[[}Y\/�����$S���x�LWJ���vM[���)�I΀����v���H �����0�����4_P>矽{��.��@�@���A���p�w@��ȩ� ��/@(# 7�Z��>]5���a����Q*t�T*��Y:����S�7�q�돗��RSY:��:�����r�H���L�1LcZ�V�e��΋VI^�J�%�`]���e��
�	      �      x�3�4������ V      �      x������ � �      �   �
  x��Z�n��}��
�@&��c�jS-�!E͎�/\K;��-:�4�o6y`��W�XNuS")��L����:u���`����n�At/���٧�n�Ǻ����c�1�t]�6� Zҿ@���1��a`܉02��<�e�Êa�ܷ݅%�0"鮸$_������0:�pϻO�e��Y��*���.l�B�p7�#��K���0�1���$�qI_@��Y������t����hpc%�e(j}YF�`ɂ/C	o>�l�	X���m�p��}�{L�?ܾ�A�3P��>�1E��n
ক�
���fwDg1!��c�$�x�W���Do��F�oxA��r����"�Rc�y�F��V�{�h��,�0F>��-��waWx�d��}=�n��X��?R9�g	�S��k�OU{5�h�o�LLe��=��C]�6��8oQ�I��W��n,�~C�U��w^�WD�d�t؟����'swl��f>_����f���{F#r�/����E=W��/ �z�ء�gH�9����!y~��IP��l�}�o�_�����f��|O�q���0vꏁ���٧��7�(���]IԁcpO6��������Ot�Exs�"��`j}�S����5�q�5`�y4����_�b@D�}N�r�����MwkDO�.�RLcNKD_m}�ߝ����Z���ӿ_�7b_SC��a�{�q����Y�����Gul���P�Y�)W,#{�,@�"�@�NPA����]0�G��/�q4��}ޑ��>��(���v?4�����f���������z��4���U�ҷH����^J��!��ש�"�2�x���|q��cb��9������y�&TwED� �@{�۠�J��dK����Q��zn6�d��-5�dw�ȷ����+�.=RI X"���z���l�7�3x�R:��ɤfd#إ@�O�>���^~=&��m�|g�q�\I���0h�[�7{T�tZ��G�P�������Vp[��Z��Υ�Gw �_#��z�ǿ�>�v��M0��+g���i�ʾ�}:n�ɫ�Nr����.E�>s��K�}:�md�K���f�כDǧ�E�1�z50��է���Cf�<V�$��M�����-�:���+5C��t�΃H 5��5$_ن���l[�|	����K�d��]'�x=lU M
�jzP�Ѕ��-�+49��S�W����[}j��3�,��)X69����n�%ewi2mJ˨N��!td��jϸ
X��ReN�v1P�$�KnA�e�uї޽]�=���٥��塜��չ]��Jf_�[���"���H!��V�ͫ F#� �8�K�yX����e��|12d0��	�i�O����&�w]Z�\�"�aU{1e���/�yr/k��̓���C�{�s�ȏ�l�����f!<��C�����"�g�%\I{S�UA�{p��kڸ�b�v�3��E��0�5e�13�$�[�;7��%E��j)�4��"�&��H��9��@���-~	�{����oE��>9>�~�ok��:�5�� OGy���U��$!��hQq���fk}+3?���o����]'��$��<~{{m�ҵ����p4�ƧX�4��5#�@jU��~�x��U����eYy��_r��)���.y�e{{�|g�V��
�L�mr^�V��7�/��r{�Gm5��Ë٪��������IVM�ݯ���F9�I�wz��]$��mW�d|N�i��y����Hx24U�z���'41�m�6��^��t�ա��Hk�FG�<��t5�v�>m�i�*/�[�m�0F8^XЋg.�m�ħ5��w��g��l璬MTJ�s}5p�ŘM����f�Mv�ʫ�
O�N��
�0B9��q���>&�7O5���n�� ��&hc}[ߛ݁jYH���*���d��́��C�`�v�S>��V�?�V�AaX��S��tX���\�1�i?� ,3��"���r��� �2�.u��������� �3�N���!\�����qҵ�6'�xү���"2�ӂ��@����!��s^��FW>H���\�bC���*�!�s�^&0&T\�_i�@@N��I����N�t��jѭ�2̲$����w�u�����	q�+�����a�<ѯ&z�^Mt�z�^G���J����9zo(�h���F��9�y��&����(�e�Q��-�(�מ@�]��=C�5��^�ݺ��X�@���@2�K*c�='�:9�|�.	���⺃�׷�+��.t�B�"�k)�(/8�\Dq���k����T%o�R����4٭�&�x���b�z���E�n y~I/=��ý�7�[Y��6sD�͒��Y�yzw�5M*�%��]ڽ�h�{�^,g�3��("��mp���ju;*b�p��zūz`�K�2~ ɮT���'���v�H=a{W�����L/Y�SIM⚔���Uu0�M+rx�>�}�!��_��z�<ٯ����&��ϖ�;�g)1���_���_�h���	��E�gA����O���H�X��z��a3���C��b�]p��pOa���DqW�8֜݃�B�sv��[�f�"F
�ۆ�������v��S�b;3b�0��¸	=q�HhߍA�R���u�Eu����[�d���*Lw�t��Tl��i�h��������n~L~��K�~F��[���j�9	�{��q��m�����?����@���      �     x�]Vɑ�@{{�q�>�p��Dj�ޭ}��D[���W���>����}������������9�05�/l��p��)i�K� H��r�T��������8{b��43'�WK_8�;v��K�:�U��Y8w���4���t`[�M����\��^�Q�O3��u%r�$�&r��bޤ4�~��T����O��@���%�p�dÜ��Av�T�H��p��]B�as"�5 	w��kw	)�Re�]vݪG�J��F-޹�����Ӄ9�u
k}|�8r��f����QK�ӡ'���&-]x�C�v	����!DE�=;�?��	kWb�4W�A3��hSc�aʑ"�)E��l�Y{��"|F�R��`��q����1��5�F���օ�;�A�6�+�{�V�5��~��f��څ��W��^KKH2��,��rv�^��䌅Mf��RC�6<�M�/�go%�0�oJ��59( ������&k銞&le������������r��9k�L��� +'�����E�ܕ�ት �;ْ-���t7ψ5�$�S�S��].�u���N�+���}YW�����Q����iD�vK�+t��s��sЄ�V��v����ֵ�r��^�(kN������>�q	�]w�zm�L�
��e��:'>d\�Ҽ2m�ڈ���rl��eOX������%D��y]c�����,8�c�n�h�[��o/���g5:����z�t\ox.,��(�U�آr����N�Z��ҏk��\��������      �   =   x�3�t��W���8�wy:�Ta���������.C���>�@��M����� ���      �   5   x�3�t,�,��2���K��9}�JKR�/?�8�˄�5�,31%�+F��� �y      �   l   x�3�,JM�,.)JLIT���8�S�K���K2�2�S�QM ���+@��`�R�ZTrxU^r&6K�L9�K�R�/��"Taƙ���Y���]^�+F��� !�.�      �   	  x�}�K�� �5>����ɲ�B
`���\�5��͍r����LG�"U���B�{�i�*���{���ح��X*wϝ�2����I�%Lc_����T�x��_;��l���bY�"���)�!�#]����V��xp��U.���d�6�/�J���׻ii�������Ǚ�6_%��(n�{���>��M���Y��*Z�m�G�bO����u|����Ly*_<�Gqr��:�MqK�J��8�6�]fw�u �U-jc/uѢ����S�ͷ�;�[UȬQ�Zs���eO�{]s��Y�(r����^/,����
���Gkk�{���f%��<�D�l�g�F��o�X�S��D�?5ҵ�ũ%EI�1��F��wme���n�5&��t�{�o,�<��%=�#����n��tظ����T.�9���?�ie�e�0�9]�ػ��,�og3��l.��n�Z~s���/�>�O�Jw��|����W�^4j�Jŭ���뺿���      �   C   x�3���LJ-J,R(N��HT��/:��(3_���T�+ .cΒ��̼��Լ�|L����� Q�      �   Q   x�3�t�,K-J?�*/93Q!,�8�$��U4(5=���(_! ?�$��U�'?91'�*���Ë�Lд旤f�s��qqq �J)$     
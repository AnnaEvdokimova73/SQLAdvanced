PGDMP  1                    |            music    16.2    16.2 9    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26502    music    DATABASE     y   CREATE DATABASE music WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE music;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    26503    album    TABLE     �   CREATE TABLE public.album (
    album_id integer NOT NULL,
    album_name character varying(250) NOT NULL,
    album_year integer
);
    DROP TABLE public.album;
       public         heap    postgres    false    4            �            1259    26506    album_album_id_seq    SEQUENCE     �   CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.album_album_id_seq;
       public          postgres    false    215    4            �           0    0    album_album_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;
          public          postgres    false    216            �            1259    26507 
   collection    TABLE     �   CREATE TABLE public.collection (
    collection_id integer NOT NULL,
    collection_name character varying(250) NOT NULL,
    collection_year integer
);
    DROP TABLE public.collection;
       public         heap    postgres    false    4            �            1259    26510    collection_collection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.collection_collection_id_seq;
       public          postgres    false    217    4            �           0    0    collection_collection_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.collection_collection_id_seq OWNED BY public.collection.collection_id;
          public          postgres    false    218            �            1259    26511    genre    TABLE     m   CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character varying(250) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false    4            �            1259    26514    genre_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_genre_id_seq;
       public          postgres    false    4    219            �           0    0    genre_genre_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;
          public          postgres    false    220            �            1259    26515 	   performer    TABLE     y   CREATE TABLE public.performer (
    performer_id integer NOT NULL,
    performer_nick character varying(250) NOT NULL
);
    DROP TABLE public.performer;
       public         heap    postgres    false    4            �            1259    26518    performer_album    TABLE     j   CREATE TABLE public.performer_album (
    album_id integer NOT NULL,
    performer_id integer NOT NULL
);
 #   DROP TABLE public.performer_album;
       public         heap    postgres    false    4            �            1259    26521    performer_genre    TABLE     j   CREATE TABLE public.performer_genre (
    genre_id integer NOT NULL,
    performer_id integer NOT NULL
);
 #   DROP TABLE public.performer_genre;
       public         heap    postgres    false    4            �            1259    26524    performer_performer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.performer_performer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.performer_performer_id_seq;
       public          postgres    false    4    221            �           0    0    performer_performer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.performer_performer_id_seq OWNED BY public.performer.performer_id;
          public          postgres    false    224            �            1259    26525    track    TABLE       CREATE TABLE public.track (
    track_id integer NOT NULL,
    track_name character varying(150) NOT NULL,
    track_album_id integer,
    track_duration double precision DEFAULT 1 NOT NULL,
    CONSTRAINT track_track_duration_check CHECK ((track_duration > (0)::double precision))
);
    DROP TABLE public.track;
       public         heap    postgres    false    4            �            1259    26528    track_collection    TABLE     l   CREATE TABLE public.track_collection (
    track_id integer NOT NULL,
    collection_id integer NOT NULL
);
 $   DROP TABLE public.track_collection;
       public         heap    postgres    false    4            �            1259    26531    track_track_id_seq    SEQUENCE     �   CREATE SEQUENCE public.track_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.track_track_id_seq;
       public          postgres    false    4    225            �           0    0    track_track_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.track_track_id_seq OWNED BY public.track.track_id;
          public          postgres    false    227            :           2604    26532    album album_id    DEFAULT     p   ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);
 =   ALTER TABLE public.album ALTER COLUMN album_id DROP DEFAULT;
       public          postgres    false    216    215            ;           2604    26533    collection collection_id    DEFAULT     �   ALTER TABLE ONLY public.collection ALTER COLUMN collection_id SET DEFAULT nextval('public.collection_collection_id_seq'::regclass);
 G   ALTER TABLE public.collection ALTER COLUMN collection_id DROP DEFAULT;
       public          postgres    false    218    217            <           2604    26534    genre genre_id    DEFAULT     p   ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    220    219            =           2604    26535    performer performer_id    DEFAULT     �   ALTER TABLE ONLY public.performer ALTER COLUMN performer_id SET DEFAULT nextval('public.performer_performer_id_seq'::regclass);
 E   ALTER TABLE public.performer ALTER COLUMN performer_id DROP DEFAULT;
       public          postgres    false    224    221            >           2604    26536    track track_id    DEFAULT     p   ALTER TABLE ONLY public.track ALTER COLUMN track_id SET DEFAULT nextval('public.track_track_id_seq'::regclass);
 =   ALTER TABLE public.track ALTER COLUMN track_id DROP DEFAULT;
       public          postgres    false    227    225            �          0    26503    album 
   TABLE DATA           A   COPY public.album (album_id, album_name, album_year) FROM stdin;
    public          postgres    false    215   $A       �          0    26507 
   collection 
   TABLE DATA           U   COPY public.collection (collection_id, collection_name, collection_year) FROM stdin;
    public          postgres    false    217   9B       �          0    26511    genre 
   TABLE DATA           5   COPY public.genre (genre_id, genre_name) FROM stdin;
    public          postgres    false    219   �B       �          0    26515 	   performer 
   TABLE DATA           A   COPY public.performer (performer_id, performer_nick) FROM stdin;
    public          postgres    false    221   C       �          0    26518    performer_album 
   TABLE DATA           A   COPY public.performer_album (album_id, performer_id) FROM stdin;
    public          postgres    false    222   �C       �          0    26521    performer_genre 
   TABLE DATA           A   COPY public.performer_genre (genre_id, performer_id) FROM stdin;
    public          postgres    false    223   �C       �          0    26525    track 
   TABLE DATA           U   COPY public.track (track_id, track_name, track_album_id, track_duration) FROM stdin;
    public          postgres    false    225   D       �          0    26528    track_collection 
   TABLE DATA           C   COPY public.track_collection (track_id, collection_id) FROM stdin;
    public          postgres    false    226   �E                   0    0    album_album_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.album_album_id_seq', 15, true);
          public          postgres    false    216                       0    0    collection_collection_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.collection_collection_id_seq', 4, true);
          public          postgres    false    218                       0    0    genre_genre_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genre_genre_id_seq', 12, true);
          public          postgres    false    220                       0    0    performer_performer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.performer_performer_id_seq', 7, true);
          public          postgres    false    224                       0    0    track_track_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.track_track_id_seq', 20, true);
          public          postgres    false    227            B           2606    26538    album album_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    215            D           2606    26540    collection collection_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (collection_id);
 D   ALTER TABLE ONLY public.collection DROP CONSTRAINT collection_pkey;
       public            postgres    false    217            F           2606    26542    genre genre_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    219            J           2606    26544    performer_album pa 
   CONSTRAINT     d   ALTER TABLE ONLY public.performer_album
    ADD CONSTRAINT pa PRIMARY KEY (album_id, performer_id);
 <   ALTER TABLE ONLY public.performer_album DROP CONSTRAINT pa;
       public            postgres    false    222    222            H           2606    26546    performer performer_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.performer
    ADD CONSTRAINT performer_pkey PRIMARY KEY (performer_id);
 B   ALTER TABLE ONLY public.performer DROP CONSTRAINT performer_pkey;
       public            postgres    false    221            L           2606    26548    performer_genre pg 
   CONSTRAINT     d   ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT pg PRIMARY KEY (genre_id, performer_id);
 <   ALTER TABLE ONLY public.performer_genre DROP CONSTRAINT pg;
       public            postgres    false    223    223            P           2606    26550    track_collection tc 
   CONSTRAINT     f   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT tc PRIMARY KEY (track_id, collection_id);
 =   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT tc;
       public            postgres    false    226    226            N           2606    26552    track track_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public            postgres    false    225            Q           2606    26553 -   performer_album performer_album_album_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.performer_album
    ADD CONSTRAINT performer_album_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id);
 W   ALTER TABLE ONLY public.performer_album DROP CONSTRAINT performer_album_album_id_fkey;
       public          postgres    false    215    222    4674            R           2606    26558 1   performer_album performer_album_performer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.performer_album
    ADD CONSTRAINT performer_album_performer_id_fkey FOREIGN KEY (performer_id) REFERENCES public.performer(performer_id);
 [   ALTER TABLE ONLY public.performer_album DROP CONSTRAINT performer_album_performer_id_fkey;
       public          postgres    false    4680    222    221            S           2606    26563 -   performer_genre performer_genre_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT performer_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);
 W   ALTER TABLE ONLY public.performer_genre DROP CONSTRAINT performer_genre_genre_id_fkey;
       public          postgres    false    219    223    4678            T           2606    26568 1   performer_genre performer_genre_performer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.performer_genre
    ADD CONSTRAINT performer_genre_performer_id_fkey FOREIGN KEY (performer_id) REFERENCES public.performer(performer_id);
 [   ALTER TABLE ONLY public.performer_genre DROP CONSTRAINT performer_genre_performer_id_fkey;
       public          postgres    false    221    4680    223            V           2606    26573 4   track_collection track_collection_collection_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collection(collection_id);
 ^   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_collection_id_fkey;
       public          postgres    false    217    226    4676            W           2606    26578 /   track_collection track_collection_track_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track_collection
    ADD CONSTRAINT track_collection_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.track(track_id);
 Y   ALTER TABLE ONLY public.track_collection DROP CONSTRAINT track_collection_track_id_fkey;
       public          postgres    false    225    226    4686            U           2606    26583    track track_track_album_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_track_album_id_fkey FOREIGN KEY (track_album_id) REFERENCES public.album(album_id);
 I   ALTER TABLE ONLY public.track DROP CONSTRAINT track_track_album_id_fkey;
       public          postgres    false    215    225    4674            �     x�-�MN�0���S �i�v��J�4��6+6np�i�G�S��� !$*$8����f�y߼7ρ�k5���H88#:#c��:�W]qM��,����/z� �4S{�ԯS�w�\a ;�Z���Mh5�K���M��V����5Z÷9,�u���0�͔,`[1ݢ�8fB	=�)�j�̛��g/�	u�����ݜ͇�����<��c��;�1e���*)��tb����6I��`���k�vi�^�A��I:��]B� <h_f      �   B   x�3�tJ-.Q�/�4204�2�t+J-� q̸�9=2K��l#.Nל�䒢���d��W� c�      �   k   x�3�Rs�2�t�)Q�/�2��� R!�4/�ˌ�#�@�(h�隓�\R�_ �Xp���$�$��rY�t��%�d��*�'gs��e&C�9!��W�  �',      �   q   x��A
�@�u�)rAku=VA��h������d`Z�zz��ߒ���{��3V�E�j�7*j���a�'{aMa�n)eԴ+�=_��㘋}�cC���B�-u%��w��� ����      �   7   x�ɹ�0���(�3�G�{q�u�,�L�R�c)��x��Z8nR�M����s�      �   ?   x����0���0�)�t�9�<�%Ρt*�vх�Tn��ǯ�|��̓ӎ8��w���0
      �   X  x�-�MN�0���Na.�Nܟ%PUH�@jX �1�4�S�	(;ĊG`�`�����ᤕ��<ｙ�8i|�n+�Ṋ�@���x���)��bZ�j��H�&BP�CU�8l��L&�!I�T�5�/�[!��s�����=��F8(�]����E�!��4�\�k�V�c�Vn�SI̜�v�1�6ల��vF��1q�y٬��c���-���8R�u��]b�MG�"/\eu8'�!����y�<�/>�_�޼l��'��?!^�s��ޣ�q�HҔ��g�Q�.�b|�Ӗ�o���yc��fy�����O,�O�ǼW�=�.��8V�K�j��]%D���}�      �   8   x���  B��R�]����7!� F4L��G�R[�?�EF�i�9�Uq�fA	�     
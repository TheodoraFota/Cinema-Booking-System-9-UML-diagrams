PGDMP     #    /                z           Cinema    13.2    13.2 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18706    Cinema    DATABASE     c   CREATE DATABASE "Cinema" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Greek_Greece.1253';
    DROP DATABASE "Cinema";
                postgres    false            �            1259    18715    customer    TABLE     �   CREATE TABLE public.customer (
    c_id integer NOT NULL,
    name text,
    phone text,
    email text,
    password text,
    address text,
    amount bigint,
    payment_method text
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    18707    movies    TABLE     �   CREATE TABLE public.movies (
    m_id integer NOT NULL,
    title text,
    director text,
    duration integer,
    actors text,
    type text
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �          0    18715    customer 
   TABLE DATA           g   COPY public.customer (c_id, name, phone, email, password, address, amount, payment_method) FROM stdin;
    public          postgres    false    201   �	       �          0    18707    movies 
   TABLE DATA           O   COPY public.movies (m_id, title, director, duration, actors, type) FROM stdin;
    public          postgres    false    200          )           2606    18722    customer customer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (c_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    201            '           2606    18714    movies movies_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (m_id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    200            �   1  x�eU�r�8=��?@��F�N�Q6��I*UsI��E�.���|}Z���������-�b��)�DnB7�у⮰T�qO�����i����6���m�i�@9��w����π0�I��rNp���!���>�0�+WsN�:��95!5� �)$��x�j�|`��~X�4��q{?5`(%W!v��8�;�/�BC�d�)n�b�TW+�{���C}H�N�BsQ(�8ԧ���܆f�}L�z��^�|{���3.5y׵>���s��1ðU'�֎Z�`|�S�_I��Q�ȃ���Ӑ�)U0e
n����e?����p3�z��_��Q��Zl��u�gR�2,��N�����|�ɓ����܃C��vʡ/�,�ah�������ôj��0N96mx+��1�!f�6R*0�g�C�V�s��N�Ӝs���p�����T�K��v�o�@��vn�!����P�-��a�.4|�����2�bAKW�
����_@]V���%��b��m����0��;=��5�!{���L`�$c�)�1��8�\c4W�d�a�ha�)�E��9���b:�&����z���%EnQ��]ncבݜ�)	Y�eK%��n����&�;���x>R'���-B�����*`.1p�RL�Ծ~��N���4�$V*j)BhŅ��q�E�B=�!��w9&�M�-q�+X!����J���CZ7v��fx� �Z!ɍƫ�pʜ�r�ij�T"䱨��*B��<�cp;��!c�#Fy�F@��e!���No�/����swZ8V�w��X��0����}Z��	k96�t�mc��"y��=,��B[̠E�O��*�Gvo= �V��y4W�7v��s��e��q�b;�;�	�:t�\�=�x
WH��f�\��u��i?W��o���`���G_OsF!/D����j�$���p�qFO>b�(�4�Z_����7e�#R!�3B6��;B�OKD�ʹpGV�6��p��ǀ��b�H\���LS����PN1�m5������((��G�����|�MRS���_�%���W��/�-�"      �   �  x�MRM��@=;�·�T�����v��HU/nb��L�L@���u��7�g���{��Z�O�|��ww�pb�VK~f/���vcG<PQ�W��3x�"\$�C(��$��m�Ko)I�߶�`ᮍ�5�*2O�����H�<�<�u�>�6� V.��9Fa�RUY6�%;Ʌp�����J%��'�X��0c簟eر������ʄ_�c�)lHc�=�WÕ��i�;.� 3��Ϭ�������p 1e%�B��d���4}�A���ߢ����.֪+���Yh��ٽ�v�{m��X�3/����M�������uP�a)U�p�h�l���~�_�<���>�ĩh~��^{uh�7��h�:V�mY��j�?�G���k�)�^�Nư�}{Z�J�Y�Y�F Y:����=#ǉsW�Ö*�h�,�9�gb����9_�k��=�kZY���/%�Dq3g��6��6�����$I� m��     
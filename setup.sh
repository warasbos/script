#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYt	hL ��wp�����������r��  �0 `,����_a�{�v��|�yd���\޼��}���b}gE�S���{������U:�:������ӛk[Y�x� v�Bܸ�[�ݴ�].��ҍI��Ec&�-��k����m���J&� �hCA���ڞTi��jhzC����i�4�� �6�jO1=S��h�F�!� C�z�  i�"5S�G���zi<�=@  @�4�   I�&�@��=#L�4S��)��Dz�L4�3A @J&�ؚ�e=&ȓҟꞔ�ji���OM	���4 2@  h�$ i�@Ѧ�jd�`mS�ا��S���O�A�4�h|� �R"�ťSL�
�IJDGᇣ���P�ޞ^o�I�ߩ���{����_���o�Ң>E�-����ok}�4�ۏNH���NX�鮺gz�#���.UK���N��$�T{j��?V"�^�d;�Z�X`�w:���1H0����i �[�
�IZ
Q�	�'|�50ͽ?5J%�Aa���*՞�w+(x:[����c��D���;����acO����ur�J�N�6�k%�d+������CS�F*���l�����-+g�kuM�4!�E%�\�<�9�c���*�% �{�\�X.#~段_�y�#6뱔Vg�ך��u����ԬB*�_Q�_=^��'0��d���Z��[@/�8�s#�vϹg��
�/�$�0���q#H�%��bx��I-h~���d�Db���K�j�K��}7�)AgScVp���������"%�7W*�3�+Eks-��haY6��
C1���֡�}�]KJ�q��撚�����5�g:��VI��.�`D��Ֆ��~��'-9V]�v�0��Vd"m�����l�+��9�-�岮*Ssf�]��d1�;sPp3"����ݭ����հ�D!5UW)�+Iٖ߁C�g]&:̭Sv����2	�;3��������x��`����@TW��{��ߞ�w-����Ǧg��\Q�\r&*Ğ\�06���U�{w��3�9�9_?u��"�+w�j��u�W�[J�1�e
���zZnc4�)1�H��BM^�V+�)I�b�m�8�*D���89�}����c�~��C�֊(l�*<�A�/} �&��^����3�>�5'ul݇f����;��P̈F��(�-�=O}[������3�P��+�{^If@�����<!����+U�M�a���Zʑ_^��Uܑ�����m4�4��,��|ҏI@��|�

�o�+>���Z\����ʐ��	�7 ���k���4����}���S��,��������Y�;4ཡ顶���>���CY{���K�a��)��������v4PTD$�U^}_H��Ս�aU�V�m��&���f�C��zo� q�� ������vAU*I(b�+D^����C[�i�h�H���/޷�(J����:��|�D 54Z���� �ُӳ�%����wC�bX�:W-�48d��X3/j�N�t��C�9sIXx����,R��Ȫ��#�;�s�yjB�8B��H6G9g������9���4�� ������/JZ�7���w������Ao���>��,���t�ҙ���o��5�Z�ĝ,�Q^����ٙ�WS��p��솅��L�NO՗B�\�,{���֭�8BĜs�99�8�������3:�L����,k�[jp"k�&^n�qm��;�yP�w;8k��1��d�z1g�j��)�5��s�:�̫uM3�����wk�-4�܇}�̧y(�A��x�:+����<�\��R��^��	S�3��pL5�H�֍X7F�&2[R�5N�t�xoN7����sGW�P����ȧ�@��v^�,p	����s��h #t8�U����W:�&݄�n���GYmXG?W~`� T�(Qh��r �zS8g7N���Uo#���^Ѧ�eQ�,1���	�4�Z�[_8�NO|Eso<adf!���" 4+��q��#�׃�F��hx!�t�+���G�x�ۥt)�ݴ��{��8��]ZK�"�$�b�x���f�5�v�>6[�H��;�I捡hɪޑi�9���+:q�cp:7��퇬uF�E�/vk���U���I1����C�{Fr�/l�1��<Խ�9Z{
�-����uԧ]-Yj�R�vy7~�8��)b�����cy/������[� K�R}h��:�sq�ٿq�F�����Rxͩ��7m|s��,KM��.�:�a���S�%�l�x���s]!
�"����N'�1���Y�,C�m���B�J�2n�XV
Xx�&�3�9�֟�gI/p,�p�eVkᜩRA�!L%0�0Tm��d.�P�|���H}�T�\{��E�((,���A#)��
�0z\�9ڛ'8h�6eT���!h�� S�R,�'�ؽ���0�.ժ,�4r6 �8��|	d�*����t�Ç��}'�|��7sT-����,f�V��*Z�-z
���Q���@.J̩������h˗�CW?��A�� naZ�2�U]�REa�J�%�(=L���y��t�����xg����ᶟo_��>x}�엸�z�@����Oљ4��У���7ҍ���Y-�1ђ��f�"Xz�s�]�E'���YR3�!G�2�˞���cx�&�(Rm>7Աwr���u:�����9�ߕ�����Д<�]���Q�/yK�?;Ɯ���I,� �љ��: �?�Ϙ��V�k� "+�b>'�'z	4�D��d�B_��,��ҠJb�$ d g A^F�X��͖le�i���q�UZ&�,>C��g,`�H��I6�B1pf}K_���8�&���O�Ȇ����rhК�K&%EAw�ز�d�3��ɒ��B 78%i#�3,ʐ:��@���˰3%��D�P.��KYw���I�++R�:@�6-����.r�*������t�ذة�<��T��H���,�W�z���ĵ��iĦ
���AP�c�J<4�=��wΗ����S �,,>&[�>�Ӊ���.=F3W��^�z���`6�B� w���z{vU<%�6{��$����V J�O��Q~D-�Cou�F�$u�=!Yc�C��= �0J4C��%Q@JDTE���+-X���~Ә^�`Il��K��c���-�m�������; 貲���n_I�s��t
/���/	-EH7���ȶOf�Ng'nb�����N����ӈ[���v�j[��i//T�|l9�=3��%�p�
k���e ��MC
�8�y���*�`�d��P�C-RI.[;Lyf#"֢���HL5��-�$�X�`��R|sDh���J��.��	ҕd�I���*�Q����_����xɣ��W�n0�S�����|rey��8*��<	����`�}YT]1{~�e��50;�
��Ӏ��St6uϾ��0��fUG����BO��J��~\�Y�l��%���9��ö�cC��i_ga�9�\�p7�&	#�������!G�-���>虾�Q��3�"7�G&�$���-�Il-�QV��,��)�?vi,�nCѫ7�6i�4��"�Q��V;Q�Z��C2���ǵ�����D7~ۈ���%��z�ߊg݅�xbWWTu�b(yZ��O�z�n4@��"'���2���-��-�n�O��� Mĉ���E#��QL��vg=!ώBy~o����'o�j���� ���"=Brz>}�J���{�m�ظ�����z�ì����f�w6q��wiU9�N�7�l���LG�<�¿��<��P��/�:���z��&c�U٣�h�NQD_n��/p�J2�(�8��,gmddRZ,��!dV�
�?r�d������}�ʟO���n��s����q���B%D9�i���p��e�S���;�ͣ����B[�L���%�ޑ�p �:�v6s�뒓�l��f��eE��uK]q��H��λ��j�=�������	�n"}���-�{�{���_�Q#���� &����=\�^��DBaf�z��m�:e�j}�Lِ���Dnq���֏��0E��?]{���ȓQ���L �`��")�xT�8��־��)��)e���	rL�ݶVd"�^U8�N�z��%�����E�g˸NB�1��w�&@��7L����a���JF��Шr��+<���E|��Y�]6|�Q1�%���� ����s��L��#�{����I��(e	+�tt��r-;*<������`lhLߏQ�Na3M6�&���l�KG� ���H��Wiy�VX�G=�N�y��$� ���p\�p_�{_N,� �_����y��WX����2���a��P�E�Q��g<���bD6�٩�2��-�W!�|��!O{A�������Ӹ-�C�H�r^��&^�{wCf~:z�i�Y���b�9�|��i9�L�qð��uy�F�K�r��b���p??�^��bZ���y�:�na����us��d�<�+rC`�'R/zҊ.�����"��;?<sO��Ҟu���:iM��B\�R��;�S��L�6�I�.��V����_���ld0Uv�IF�͎A���Y��P�=�b.���������IA,,�3,@���<<������&P	�ʉT�����$Ђ����Ǩ�2
�&$�U��f��}qa>O�L��{h�����e�)��8O�X�i�|̬EF
�|}ӊ{�7s��|X
��KU|�7d�Nc��~ ���l6^�<þ'���(y���ğ��C�@O�L���J8\z�P�fq�0i%$\8��)!!�fѴ]PNdc�}Y}�u�~��~r����NC���T�6Ņ��CZ
�:����ߟp>�O�g?|�C�"A�n���1�H�K���`�6�����~�i�r�V֘�>�k�	�gE L�wT�x�w����A:`k�vK����wP�W�%�����a!\�&�D�EiW��bk���M7}�z֔߰�����a�$.��V�����������3����<A��J*�8�I">��&��(h�/u�ܡ�XwiP��TX�ϵ�|f�7C�����()�������PiK�R��D�e�#I9/�FY�h�Q{���o��(�]4 �,���ΤF�1�Y
GD�˚� ~�����ھ3�>�f����J ��BF*����U)H$���F1X � ��"&;/$.ɄN��R纨PL�����J���⃷�-p}Ct�q:�E1��hiZ_S� Y�� rێ�	� l��G_�������a=��2�lg7�k���]AԽ�Nh��cV��/,)�&�r�/�Yة��L�mE��"	&ڇ� Q��P�Z���$*%B�����:Ő��DD����;�9fgX.��m32�i[�ީP��[�g���GD,Y�C^e=,	�Ć!���Q
tU�$�I�:����M��!��	�ha�gjkmJ���# CP��q�tDVu��5'�����)�0�M�4 ��nb2ED��Ӽ���4mč�������?-�v��5Ja��/@u�ٙ��l+PwD�K����V
�[�Fe�`y��R�8��V�e^ذ�~����'"R�4����,�lJ�
��T_8P�/��f�P��@���h��+�]O�B�K����!rA��C��!��rėY`ꅴ*l���9������d���y^lE�n�ڥ�JS��.�ɨ4<��H	.h��z�nj��a�,�� Ԃ!�IY;����!��	*�K�o2UcC@{I3��8�(�*�E������xN�5&�h��Kw���DG�C�h����A2A#��K���5�c�f�9H�"mOd�		�DGLEVKY�D��-e���S�G&��IXZrb)E_�"ۄ��8��w�����4V/��µ˓^�B��K�	��
s �J�����F��_ِ�|`Y1�|�FeW�Z�``��l0 �E�4����L�)+*V���ZXgK�P/P�a���Eq`J9s��2��~mG1�O��q�R!���>rb�(�ŌB���U$��03to	t0b2�ɻ�8��ƗD!�Zʴ*-�0�\	�;ؘ�"0@e��&�M8X5��$�K�p����69T�^��Y�7��)H���H�J8����f��B�ϥ�:�li��A"}�Jm$y2�d�QY��UDj�J��+���lm�h��4��]��&���K-���
�9�(�g�RZwT�Z����3�D�JR�:YbnyU9������� ����%�,.�CLԴt\U)�@l���*Ж�!����nF($xL��H�ا��sH]�8Q����و1�	��A�D	��n��:g� :�&r��QeT	T���U2h4xs����1L�6n<�ID�Y�����;�*P�Q�7i($�p�_c���`�,A0�$�cՇ=E8���O��&�>'U|��t�Yi�01A&<Ȝ��� P��"���|���P8�\��Q�o�`h$ZK9F�.�I;3*���*D�uGL�LaqvUE&�P��yB�
b�#n��p����ft ��P��(��xS�_����t�����UUU^�u�m��Q��Z�����A��o.�e��A��5�D��,�.'OA��	6p�U�'P���i�W%(��B�B�yT�@�ƇL1��Z�N�p�Y�w���\w��P(��z�1��$H�V�� �إqOa��:����\�B�2Ъ���J����K��� ��I@��2�tu>�Tu,թs4���Ra�q@�Z��Ȓ{b!�H�"�bP�Y�	v��jU�2Ä�
 ��J�Dp��2@!�_7�֦Z��E	H	M�\�PE�-tRf��!����'�%��wT�",��
Zj�� Ώ|�m�q�k	RLE�F�Hi�ϫ4�v/
	L0\J��-�]�V<�bC?Q��U$$��$"�kf��v,�� �4%'�09�!+i��`�l���=��G��Aub.>yA�C����=`t��
R�q�z\�5՟���+*"��*f����pAJ���i�)cB+�T�1��[�e��l��e�0A���ܰ�myd�7��2�D�V\N��W�xxV��
�U�ܩQG�G]�֥�]J`np"���fL?�Oӎ��k�^`� ������6 ��V�F(.��}Ϡ�u��o$K�:��44����C`��<��jd$��H\��ItUՉrUU�*�u.��xhb�v�ĺ�1b�C=��Z�4�Y�0H[��,P	���L��ub�  ��	Q�*���E��A��n� ֊��P�
���p�e�#��9���e���BR"�Qz'H���j֪ĲP�ª��qQmBB�[��e�]C
 g�&�<��S�.�r!���s)�*i���-��!Cʡ*�.LHh�"����[�PP��E�O ��كK������	�L"	�&I���)�2S�U'��҅@$��W� ��`XM"c>|�_���y%2h0H��L��R'Y2��4�\y`nT8���#�)�-���2�C[
�����/��T�����W����iE�8PĚY4�бڦ#Sej����jcU�%6�!��� �"�����9�g~�* �@�F*;R�Xap���8�^�!�$�5@1-�'ܘ����pbJ��a�+�ZB��
�+���A!��v��RHr�A�<�:��n"V�B uh�K��'װ6}��\���CY8��XޛD�S�9��;X<�^~Afk��`��Q� j�m��v!T�+(�ڮ��ń�Q ���EE��*�}�H�&�T7G�i�UgI�t�Z:1u{YnR���eK=O�8\��l1��+�J�.[��9ZރG?��VҺ�-���V;���fe��ٓ�W�
��aR(��b����L�sU������'
\�B5R9G|w�N��ݼ����S��fh��R��Q+j��Fk�B_������Ea����0ک,(���
�cCԌ�!�a# ����8S%�²Z��P뮠o?E BF�D֒lMFs�-3PjD9�F5Lx§�{�d��=������]�XlF��	\� fC*�!�ʊ�I���C��UX��!p2G�%I�%�B�)���%"Lv$��X�D �BD��J�A��D�2ĥ�����c�M���jA���Ą3�09.�kP�IB���ɳ�l����J�9��AD*�<�I-�:�
�ǒ畣�v��J��{�-j�$fA�\��o�H6؅Y�T` �e��v�l֣Q�LzXA%e�\�TR_٫��~c�4�)�6H:5���-�t[ln"i!q#�A2䂠��V[:�Eİ�m�DA�`]o˽%)O�E@��]��͖����.J�(xBH=*A�[`P�`�~�*U��3�=�D��`�lP{mQ���1!��lEwd���R\H�@�M,*3v�QW1yN��іx"�	Rl�9�|�m3�.��1r#���\� cK���O��%(E��e���(��eÿKfZ5����!��CP�DEo��ӽR�����D3
���T�H�%K��ş���J�E�oɈ���*�9n��L�`̵���E
1"!߸M����0_j���$�n�s2ۭw��q�\R'3� �m	k�A`��QP���" �4Vrɕ�2�a����]rk(����¬���F`��Hl�k��E�k�����fLY%j��E4��F��������Ŧ���3 �$%� -�$P4X^����*�P\\H�*��(�
D��aQ�,! *�^�"Y�8�J
C�Qlb�~em!C�*�� \)t �!o�#]*�f����$JdaA��S{jP0/� D1*	�՚ �
�=m>�� �2UR�� ��q*ڒ���&��u"�V�m����q�ՠ�
A�d�feE)V�+
>U�E�8K�c��Kl��X[sE�C���3f�f�]!�ɬ�HQ#<��+�����8��B9O��X�0Y��5z]!-�vц��_�}S�����=n�ŝ���H��%p�� �'p��`4�*��8���AH�kB��NM:�����xsK�7�� u7�7������zr����$�[���HF�SzT(~�xc�-��EB`��r�Ōkl�_y�����;3-QR<�k5�yح(�Ch����4�է q��⒩�ᇲ`V<���LM0��9�6,U(8��Ȭ���[����'A!遴��c�[��P�u�C�xn����o������+�Ƽ`Y��Ƶ��ԇ��۩F��c��&s��|e)��CLe}ԪS>�u���Y��
����XU��F�2�$)��8$Y�[bڮd;. �J�d�d��q��!���=xef��I	�G"��Biy(���g�"��d�zt(��b����B�@.��n���7������Si�h7B����,�t>.�O���PI�����O�l���w�N�
�cT��hm1�1:��>�k,�\gɨ�<��dv�>���O��oN�p���@��'�DT�y#��ߓ�|����A�� 4!����	q(��)��KB`
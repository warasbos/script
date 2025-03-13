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
BZh91AY&SYܬ��  ���Tp}���~�ގ����  D   � P P-[���53SQ�a6I���L�� i�	�jh%	�T�#&�觤�=L�z��S��4z� H�M4=L��CCA�4���  82h��CChi�F�d� �I%Q6��=M2� 4h@   E��g�fE^?F3_�Aź�u�<����F�J՛f*n	RQ%��E���� �A#��8)�*fR�OK�Pňcn�!�5�N
��m�j�*�A�f&�X�����r�r q�VȈB�[�HCA��a�R7D�LL�C���>گ��ў�O�L*��*�p*s#.)^��-��6X"\N��q�P�LA�mZo9M���.���X;���jBviDͶ!t(~�q`p7hUp7ow�[��C+f���H������o��D�HL �:Y�"���^�]ш�U\�7��#"X�H[}8U2�Yr�ز��E����C{�gt'"������ĉ`3�d	���eŅ��2QAJ�-r�e���g�ӝm��pR�8s�	ԽH��SvzS�2��*Xd��M���Vu��}$��bi"�<Nzbb�,�Y߿��Ĩ���9�TxY�6�0�VvX�3T�����6ٵX���z�m�G_��H-�:܌l��N�9I��?~��B�ev������Ub'���3�)SM
,�-E:�@(�0ɧ1��X����"Љ����!{+50�gC}q�_�D%��'
�zy	�)*�4-ߢ�H2��1&d�K�Z!�P�� L�|�cpYU
!����͌�d�Pb'��%�dJ\�c�3A��W��y�2}o*�$l
ZB6�z��0,CIf�L��)qf��S"�Q�\h�"�f
��n��xZ͓O8�R߱ K�$	
�@˺�S�$�[L ���"�(HnVE� 
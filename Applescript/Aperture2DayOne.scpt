FasdUAS 1.101.10   ��   ��    k             l     ��  ��    c ]The following was written by Jordan Patterson and posted originally on www.JordanPatterson.me     � 	 	 � T h e   f o l l o w i n g   w a s   w r i t t e n   b y   J o r d a n   P a t t e r s o n   a n d   p o s t e d   o r i g i n a l l y   o n   w w w . J o r d a n P a t t e r s o n . m e   
  
 l     ��  ��    8 2Feel free to modify, reuse, and repost this script     �   d F e e l   f r e e   t o   m o d i f y ,   r e u s e ,   a n d   r e p o s t   t h i s   s c r i p t      l     ��������  ��  ��        l     ��  ��    ! New Dayone Entry.spct V 1.0     �   6 N e w   D a y o n e   E n t r y . s p c t   V   1 . 0      l     ��  ��     
08/07/2012     �    0 8 / 0 7 / 2 0 1 2      l     ��  ��    t nThis script creates a new entry in Day One with the image currently selected in Aperture attached to the entry     �   � T h i s   s c r i p t   c r e a t e s   a   n e w   e n t r y   i n   D a y   O n e   w i t h   t h e   i m a g e   c u r r e n t l y   s e l e c t e d   i n   A p e r t u r e   a t t a c h e d   t o   t h e   e n t r y     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �This script exports the currently selected image while the script runs and then deletes it, feel free to change the location of this export from the default of the Desktop    % � & &V T h i s   s c r i p t   e x p o r t s   t h e   c u r r e n t l y   s e l e c t e d   i m a g e   w h i l e   t h e   s c r i p t   r u n s   a n d   t h e n   d e l e t e s   i t ,   f e e l   f r e e   t o   c h a n g e   t h e   l o c a t i o n   o f   t h i s   e x p o r t   f r o m   t h e   d e f a u l t   o f   t h e   D e s k t o p #  ' ( ' l    	 )���� ) r     	 * + * l     ,���� , n      - . - 1    ��
�� 
psxp . l     /���� / l     0���� 0 I    �� 1��
�� .earsffdralis        afdr 1 l     2���� 2 m     ��
�� afdmdesk��  ��  ��  ��  ��  ��  ��  ��  ��   + o      ���� "0 theexportfolder theExportFolder��  ��   (  3 4 3 l  
 � 5���� 5 O   
 � 6 7 6 k    � 8 8  9 : 9 r     ; < ; l    =���� = e     > > 1    ��
�� 
sele��  ��   < o      ���� 0 imagesel imageSel :  ?�� ? Y    � @�� A B�� @ k   # � C C  D E D O   # � F G F k   * � H H  I J I l  * *�� K L��   K z t This script uses the EXIF date and time attached to the image to set the date and time of the Day ONe journal entry    L � M M �   T h i s   s c r i p t   u s e s   t h e   E X I F   d a t e   a n d   t i m e   a t t a c h e d   t o   t h e   i m a g e   t o   s e t   t h e   d a t e   a n d   t i m e   o f   t h e   D a y   O N e   j o u r n a l   e n t r y J  N O N r   * 4 P Q P c   * 2 R S R n   * 0 T U T 1   . 0��
�� 
rkvl U 4   * .�� V
�� 
rkex V m   , - W W � X X  C a p t u r e Y e a r S m   0 1��
�� 
long Q o      ���� 0 theyear theYear O  Y Z Y r   5 ? [ \ [ c   5 = ] ^ ] n   5 ; _ ` _ 1   9 ;��
�� 
rkvl ` 4   5 9�� a
�� 
rkex a m   7 8 b b � c c $ C a p t u r e M o n t h O f Y e a r ^ m   ; <��
�� 
long \ o      ���� 0 themonth theMonth Z  d e d r   @ N f g f c   @ J h i h n   @ H j k j 1   F H��
�� 
rkvl k 4   @ F�� l
�� 
rkex l m   B E m m � n n " C a p t u r e D a y O f M o n t h i m   H I��
�� 
long g o      ���� 0 theday theDay e  o p o r   O ] q r q c   O Y s t s n   O W u v u 1   U W��
�� 
rkvl v 4   O U�� w
�� 
rkex w m   Q T x x � y y   C a p t u r e H o u r O f D a y t m   W X��
�� 
long r o      ���� 0 thehour theHour p  z { z r   ^ l | } | c   ^ h ~  ~ n   ^ f � � � 1   d f��
�� 
rkvl � 4   ^ d�� �
�� 
rkex � m   ` c � � � � � & C a p t u r e M i n u t e O f H o u r  m   f g��
�� 
long } o      ���� 0 themin theMin {  � � � r   m { � � � c   m w � � � n   m u � � � 1   s u��
�� 
rkvl � 4   m s�� �
�� 
rkex � m   o r � � � � � * C a p t u r e S e c o n d O f M i n u t e � m   u v��
�� 
long � o      ���� 0 thesec theSec �  ��� � Q   | � � � � � r    � � � � c    � � � � n    � � � � 1   � ���
�� 
rkvl � 4    ��� �
�� 
rkip � m   � � � � � � �   C a p t i o n / A b s t r a c t � m   � ���
�� 
TEXT � o      ���� 0 
thecaption 
theCaption � R      ������
�� .ascrerr ****      � ****��  ��   � r   � � � � � m   � � � � � � �   � o      ���� 0 
thecaption 
theCaption��   G n   # ' � � � 4   $ '�� �
�� 
cobj � o   % &���� 0 i   � o   # $���� 0 imagesel imageSel E  � � � I  � ��� � �
�� .rkstrkxpnull���     **** � o   � ����� 0 imagesel imageSel � �� � �
�� 
faal � 4   � ��� �
�� 
rkes � m   � � � � � � �  D a y   O n e � �� ���
�� 
insh � o   � ����� "0 theexportfolder theExportFolder��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 imagesel imageSel � o      ���� 	0 image   �  � � � O   � � � � � k   � � � �  � � � r   � � � � � b   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 	0 image   � m   � � � � � � �  . j p g � o      ���� 0 thename theName �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 	0 image   � o      ���� 0 thetitle theTitle��   � 4   � ��� �
�� 
rklb � m   � �����  �  ��� � r   � � � � � c   � � � � � b   � � � � � o   � ����� "0 theexportfolder theExportFolder � o   � ����� 0 thename theName � m   � ���
�� 
TEXT � o      ���� 0 theexportpath theExportPath��  �� 0 i   A m    ����  B I   �� ���
�� .corecnte****       **** � o    ���� 0 imagesel imageSel��  ��  ��   7 m   
  � ��                                                                                  fstp  alis    :  SSD                        ʹStH+   `h�Aperture.app                                                    	Yǩ�        ����  	                Applications    ʹ7T      ǩ	�     `h�  SSD:Applications: Aperture.app    A p e r t u r e . a p p    S S D  Applications/Aperture.app   / ��  ��  ��   4  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � ����� � r   � � � � c   � � � � b   � � � � b   �	 � � � b   � � � � b   � � � � o   � ����� 0 themonth theMonth � m   �  � � � � �  / � o  ���� 0 theday theDay � m   � � � � �  / � o  	
���� 0 theyear theYear � m  ��
�� 
TEXT � o      ���� 0 thedate theDate��  ��   �  � � � l  ����� � r   � � � m   � � � � �  A M � o      ���� 0 theap theAP��  ��   �  � � � l 5 ����� � Z  5 � ����� � A # � � � o  ���� 0 themin theMin � m  "���� 
 � r  &1 � � � b  &- � � � m  &) � � � � �  0 � o  ),���� 0 themin theMin � o      ���� 0 themin theMin��  ��  ��  ��   �  � � � l 6W ���  Z  6W�~�} ? 6= o  69�|�| 0 thehour theHour m  9<�{�{  k  @S  r  @G	 m  @C

 �  P M	 o      �z�z 0 theap theAP �y r  HS \  HO o  HK�x�x 0 thehour theHour m  KN�w�w  o      �v�v 0 thehour theHour�y  �~  �}  ��  �   �  l Xs�u�t r  Xs c  Xo b  Xk b  Xg b  Xc b  X_ o  X[�s�s 0 thehour theHour m  [^   �!!  : o  _b�r�r 0 themin theMin m  cf"" �##    o  gj�q�q 0 theap theAP m  kn�p
�p 
TEXT o      �o�o 0 thetime theTime�u  �t   $%$ l t�&�n�m& r  t�'(' b  t�)*) b  t�+,+ b  t-.- b  t{/0/ m  tw11 �22  "0 o  wz�l�l 0 thedate theDate. m  {~33 �44   , o  ��k�k 0 thetime theTime* m  ��55 �66  "( o      �j�j 0 thedatetime theDateTime�n  �m  % 787 l     �i�h�g�i  �h  �g  8 9:9 l ��;�f�e; r  ��<=< c  ��>?> b  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON m  ��PP �QQ  e c h o   " #  O o  ���d�d 0 thetitle theTitleM m  ��RR �SS  \ n \ nK o  ���c�c 0 
thecaption 
theCaptionI m  ��TT �UU < "   |   / u s r / l o c a l / b i n / d a y o n e   - p = 'G o  ���b�b 0 theexportpath theExportPathE m  ��VV �WW 
 '   - d =C o  ���a�a 0 thedatetime theDateTimeA m  ��XX �YY    n e w? m  ���`
�` 
TEXT= o      �_�_ 0 	thescript 	theScript�f  �e  : Z[Z l     �^�]�\�^  �]  �\  [ \]\ l ��^�[�Z^ r  ��_`_ I ���Ya�X
�Y .sysoexecTEXT���     TEXTa o  ���W�W 0 	thescript 	theScript�X  ` o      �V�V 0 theentry theEntry�[  �Z  ] bcb l ��d�U�Td r  ��efe l ��g�S�Rg n  ��hih 1  ���Q
�Q 
lengi o  ���P�P 0 theentry theEntry�S  �R  f o      �O�O 0 	thelength 	theLength�U  �T  c jkj l ��l�N�Ml r  ��mnm \  ��opo o  ���L�L 0 	thelength 	theLengthp m  ���K�K 'n o      �J�J 0 thestart theStart�N  �M  k qrq l ��s�I�Hs r  ��tut \  ��vwv o  ���G�G 0 	thelength 	theLengthw m  ���F�F u o      �E�E 0 theend theEnd�I  �H  r xyx l ��z�D�Cz r  ��{|{ n  ��}~} 7 ���B�
�B 
ctxt o  ���A�A 0 thestart theStart� o  ���@�@ 0 theend theEnd~ o  ���?�? 0 theentry theEntry| o      �>�> 0 theudid theUDID�D  �C  y ��� l     �=�<�;�=  �<  �;  � ��� l  ��:�9� O   ��� r  ��� b  ��� m  	�� ��� , d a y o n e : / / e d i t ? e n t r y I d =� o  	�8�8 0 theudid theUDID� l     ��7�6� n      ��� 1  �5
�5 
pURL� l ��4�3� 4 �2�
�2 
docu� m  �1�1 �4  �3  �7  �6  � m   ���                                                                                  sfri  alis    2  SSD                        ʹStH+   `h�
Safari.app                                                      `���D�        ����  	                Applications    ʹ7T      �6�     `h�  SSD:Applications: Safari.app   
 S a f a r i . a p p    S S D  Applications/Safari.app   / ��  �:  �9  � ��� l )��0�/� I )�.��-
�. .sysoexecTEXT���     TEXT� b  %��� b  !��� m  �� ���  r m   '� o   �,�, 0 theexportpath theExportPath� m  !$�� ���  '�-  �0  �/  � ��+� l     �*�)�(�*  �)  �(  �+       "�'�����&�%�$�#�"�! ������ ������ ������������'  �  ������������
�	��������� ��������������������
� .aevtoappnull  �   � ****� "0 theexportfolder theExportFolder� 0 imagesel imageSel� 0 theyear theYear� 0 themonth theMonth� 0 theday theDay� 0 thehour theHour� 0 themin theMin� 0 thesec theSec� 0 
thecaption 
theCaption� 	0 image  �
 0 thename theName�	 0 thetitle theTitle� 0 theexportpath theExportPath� 0 thedate theDate� 0 theap theAP� 0 thetime theTime� 0 thedatetime theDateTime� 0 	thescript 	theScript� 0 theentry theEntry� 0 	thelength 	theLength�  0 thestart theStart�� 0 theend theEnd�� 0 theudid theUDID��  ��  ��  ��  ��  ��  ��  ��  � �����������
�� .aevtoappnull  �   � ****� k    )��  '��  3��  ���  ���  ���  ��� �� $�� 9�� \�� b�� j�� q�� x�� ��� �����  ��  ��  � ���� 0 i  � R�������� ����������� W������ b�� m�� x�� ��� ����� ��������� ����� ������������� ������� � ��� ����� ���
 "��135��PRTVX������������������������������
�� afdmdesk
�� .earsffdralis        afdr
�� 
psxp�� "0 theexportfolder theExportFolder
�� 
sele�� 0 imagesel imageSel
�� .corecnte****       ****
�� 
cobj
�� 
rkex
�� 
rkvl
�� 
long�� 0 theyear theYear�� 0 themonth theMonth�� 0 theday theDay�� 0 thehour theHour�� 0 themin theMin�� 0 thesec theSec
�� 
rkip
�� 
TEXT�� 0 
thecaption 
theCaption��  ��  
�� 
faal
�� 
rkes
�� 
insh�� 
�� .rkstrkxpnull���     ****�� 	0 image  
�� 
rklb
�� 
pnam�� 0 thename theName�� 0 thetitle theTitle�� 0 theexportpath theExportPath�� 0 thedate theDate�� 0 theap theAP�� 
�� �� 0 thetime theTime�� 0 thedatetime theDateTime�� 0 	thescript 	theScript
�� .sysoexecTEXT���     TEXT�� 0 theentry theEntry
�� 
leng�� 0 	thelength 	theLength�� '�� 0 thestart theStart�� �� 0 theend theEnd
�� 
ctxt�� 0 theudid theUDID
�� 
docu
�� 
pURL��*�j �,E�O� �*�,EE�O �k�j kh  ��/ x*��/�,�&E�O*��/�,�&E�O*�a /�,�&E` O*�a /�,�&E` O*�a /�,�&E` O*�a /�,�&E` O *a a /�,a &E` W X  a E` UO�a *a  a !/a "�a # $O��k/E` %O*a &k/ _ %a ',a (%E` )O_ %a ',E` *UO�_ )%a &E` +[OY�(UO�a ,%_ %a -%�%a &E` .Oa /E` 0O_ a 1 a 2_ %E` Y hO_ a 3 a 4E` 0O_ a 3E` Y hO_ a 5%_ %a 6%_ 0%a &E` 7Oa 8_ .%a 9%_ 7%a :%E` ;Oa <_ *%a =%_ %a >%_ +%a ?%_ ;%a @%a &E` AO_ Aj BE` CO_ Ca D,E` EO_ Ea FE` GO_ Ea HE` IO_ C[a J\[Z_ G\Z_ I2E` KOa L a M_ K%*a Nk/a O,FUOa P_ +%a Q%j B� ��� * / U s e r s / d a v i d / D e s k t o p /� ����� �  �� ��  ������
�� 
rkdp� ��� , M n h P P Z l x T V C e 3 l i i n Z U t D w
�� kfrmID  �&��% �$ �# �" �! � ���  I M G _ 0 1 0 0 . j p g� ���  I M G _ 0 1 0 0� ��� B / U s e r s / d a v i d / D e s k t o p / I M G _ 0 1 0 0 . j p g� ���  8 / 5 / 2 0 1 2� ���  1 2 : 2 0   A M� ��� & " 8 / 5 / 2 0 1 2   1 2 : 2 0   A M "� ��� � e c h o   " #   I M G _ 0 1 0 0 \ n \ n "   |   / u s r / l o c a l / b i n / d a y o n e   - p = ' / U s e r s / d a v i d / D e s k t o p / I M G _ 0 1 0 0 . j p g '   - d = " 8 / 5 / 2 0 1 2   1 2 : 2 0   A M "   n e w� ���  N e w   e n t r y   :   ~ / L i b r a r y / M o b i l e   D o c u m e n t s / 5 U 8 N S 4 G X 8 2 ~ c o m ~ d a y o n e a p p ~ d a y o n e / D o c u m e n t s / J o u r n a l _ d a y o n e / e n t r i e s / D D 2 B 5 9 E 0 C 3 5 0 4 3 E D A 9 0 C F E D 0 A 4 9 C F 3 5 0 . d o e n t r y�  �� i� �� ��� @ D D 2 B 5 9 E 0 C 3 5 0 4 3 E D A 9 0 C F E D 0 A 4 9 C F 3 5 0�  �  �  �  �  �  �  �  ascr  ��ޭ
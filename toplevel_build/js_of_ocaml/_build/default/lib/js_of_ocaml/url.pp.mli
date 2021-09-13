Caml1999N029����            7lib/js_of_ocaml/url.mli����  )�  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������	� This module provides functions for tampering with Url. It's main goal is to
    allow one to stay in the Ocaml realm without wandering into the
    {!Dom_html.window}##.location object. ��7lib/js_of_ocaml/url.mliU���W-Y@@@@@@�����������	o The first functions are mainly from and to string conversion functions for
     the different parts of a url. ��Y[[�Z��@@@@@@���Р)urldecode��\���\��@��@����&string��#\���$\��@@�@@@����&string��,\���-\��@@�@@@�@@@@���)ocaml.docꐠ�����	U [urldecode s] swaps percent encoding characters for their usual
    representation. ��=]���>^6L@@@@@@@��@\��@�@���Р)urlencode��I`NR�J`N[@���)with_plus����$bool��U`Ni�V`Nm@@�@@@��@����&string��``Nq�a`Nw@@�@@@����&string��i`N{�j`N�@@�@@@�@@@��n`N^@@@@��?�������
   [urlencode ?with_plus s] replace characters for their percent encoding
    representation. Note that the '/' (slash) character is escaped as well. If
    [with_plus] is [true] (default) then ['+']'s are escaped as ["%2B"]. If not,
    ['+']'s are left as is. ��za���{dm�@@@@@@@��}`NN@�@���A�    �(http_url���f����f��@@@��Р'hu_host���g����g��@@����&string���g����g��@@�@@@���h��@��l�������; The host part of the url. ���g����g��@@@@@@@�Р'hu_port���h����h��@@����#int���h����h��@@�@@@���i@����������	% The port for the connection if any. ���h����h�@@@@@@@�Р'hu_path���i��i@@����$list���i'��i+@�����&string���i ��i&@@�@@@@�@@@���jX[@����������	% The path split on ['/'] characters. ���i-��iW@@@@@@@�Р.hu_path_string���jX\��jXj@@����&string���jXm��jXs@@�@@@��k��@��Ӑ������; The original entire path. ��jXu�jX�@@@@@@@�Р,hu_arguments��k���k��@@����$list��k���k��@��������&string��)k���*k��@@�@@@�����&string��3k���4k��@@�@@@@�@@@@��8k��@@@�%�:n(+@���������	Z Arguments as a field-value
                                             association list.��Fl���Gm�'@@@@@@@�Р+hu_fragment��Mn(,�Nn(7@@����&string��Un(:�Vn(@@@�@@@�@��)�������	0 The fragment part (after the ['#'] character). ��dn(B�en(w@@@@@@@@A@��6�������; The type for HTTP(s) url. ��qp||�rp|�@@@@@@@��tf���uox{@@�@���A�    �(file_url��r����r��@@@��Р'fu_path���s����s��@@����$list���s����s��@�����&string���s����s��@@�@@@@�@@@���t��@@�Р.fu_path_string���t����t��@@����&string���t����t��@@�@@@���u��@@�Р,fu_arguments���u����u��@@����$list���u�		��u�	@��������&string���u����u��@@�@@@�����&string���u�	��u�	@@�@@@@�@@@@���u��@@@�%��v		@@�Р+fu_fragment���v		��v		@@����&string���v		 ��v		&@@�@@@�@@@A@����������? The type for local file urls. ���x	+	+��x	+	O@@@@@@@���r����w	'	*@@�@���A�    �#url��{	k	p�{	k	s@@@��Р$Http��|	v	z�|	v	~@������(http_url��|	v	��|	v	�@@�@@@@@��|	v	x@��쐠�����4Non secure HTTP urls��'|	v	��(|	v	�@@@@@@@�Р%Https��.}	�	��/}	�	�@������(http_url��8}	�	��9}	�	�@@�@@@@@��<}	�	�@���������1Secure HTTPS urls��H}	�	��I}	�	�@@@@@@@�Р$File��O~	�	��P~	�	�@������(file_url��Y~	�	��Z~	�	�@@�@@@@@��]~	�	�@��.�������+Local files��i~	�	��j~	�	�@@@@@@@@A@��;�������4 The type for urls. ��vz	Q	Q�wz	Q	j@@@@@@@��y{	k	k @@�!@���Р1default_http_port��� @	�
 �� @	�
@����#int��� @	�
�� @	�
@@�@@@@��]�������	2 The default port for [Http] communications (80). ��� A

�� A

O@@@@@@@��� @	�	�@�@���Р2default_https_port��� C
Q
U�� C
Q
g@����#int��� C
Q
j�� C
Q
m@@�@@@@���������	4 The default port for [Https] communications (443). ��� D
n
n�� D
n
�@@@@@@@��� C
Q
Q@�@���Р3path_of_path_string��� F
�
��� F
�
�@��@����&string��� F
�
��� F
�
�@@�@@@����$list��� F
�
��� F
�
�@�����&string��� F
�
��� F
�
�@@�@@@@�@@@�@@@@����������	= [path_of_path_string s] splits [s] on each ["/"] character. ��� G
�
��� G
�@@@@@@@��� F
�
�@�@���Р0encode_arguments��� I!�� I1@��@����$list�� IF�	 IJ@��������&string�� I5� I;@@�@@@�����&string�� I>� ID@@�@@@@�@@@@��# I4@@@����&string��* IN�+ IT@@�@@@�@@@@����������	� [encode_arguments a] expects a list of pair of values of the form
    [(name,value)] were [name] is the name of an argument and [value] it's
    associated value. ��9 JUU�: L��@@@@@@@��< I@�@���Р0decode_arguments��E N �F N @��@����&string��O N �P N @@�@@@����$list��X N 3�Y N 7@��������&string��d N "�e N (@@�@@@�����&string��n N +�o N 1@@�@@@@�@@@@��s N !@@@�&@@@@��E�������	� [decode_arguments s] parses [s] returning the sliced-diced
    association list. [s] should be only the arguments part (after the '?')
    not the whole url. ��� O88�� Q��@@@@@@@��� N  +@�,@������������	k The following part allow one to handle Url object in a much higher level
    than what a string provides. ��� S���� T+N@@@@@@���Р-url_of_string��� VPT�� VPa@��@����&string��� VPd�� VPj@@�@@@����&option��� VPr�� VPx@�����#url��� VPn�� VPq@@�@@@@�@@@�@@@@����������	x [url_of_string s] parses [s] and builds a value of type [url] if [s] is not
    a valid url string, it returns [None]. ��� Wyy�� X��@@@@@@@��� VPP@�@���Р-string_of_url��� Z���� Z�	@��@����#url��� Z��� Z�@@�@@@����&string��� Z��� Z�@@�@@@�@@@@����������	� [string_of_url u] returns a valid string representation of [u]. Note that
  * [string_of_url ((fun Some u -> u) (url_of_string s))] is NOT necessarily
  * equal to [s]. However [url_of_string (string_of_url u) = u]. ��� [�� ]��@@@@@@@��� Z��@�@������'Current�� aSZ� aSa@�����Р$host�� bhn� bhr@����&string�� bhu� bh{@@�@@@@��萠�����	# The host part of the current url. ��# c|~�$ c|�@@@@@@@��& bhj@�@���Р$port��/ e���0 e��@����&option��7 e���8 e��@�����#int��@ e���A e��@@�@@@@�@@@@���������> The port of the current url. ��O f���P f��@@@@@@@��R e��@�@���Р(protocol��[ h���\ h��@����&string��c h���d h��@@�@@@@��6�������	" The protocol of the current url. ��q i��r i�(@@@@@@@��t h��@�@���Р+path_string��} k*0�~ k*;@����&string��� k*>�� k*D@@�@@@@��X�������	1 The path of the current url as one long string. ��� lEG�� lE}@@@@@@@��� k*,@�@���Р$path��� n��� n�@����$list��� n��� n�@�����&string��� n��� n�@@�@@@@�@@@@����������	8 The path of the current url as a list of small string. ��� o���� o��@@@@@@@��� n�@�@���Р)arguments��� q���� q��@����$list��� q���� q�@��������&string��� q���� q��@@�@@@�����&string��� q���� q��@@�@@@@�@@@@��� q��@@@@����������	: The arguments of the current url as an association list. ��� r�� rC@@@@@@@��� q��*@�+@���Р,get_fragment�� tEK� tEW@��@����$unit�� tEZ� tE^@@�@@@����&string�� tEb� tEh@@�@@@�@@@@��퐠�����	| Because the [fragment] of the Url for the current document can change
        dynamically, we use a functional value here. ��( uik�) v��@@@@@@@��+ tEG@�@���Р,set_fragment��4 x���5 x� @��@����&string��> x��? x�	@@�@@@����$unit��G x��H x�@@�@@@�@@@@���������	8 [set_fragment s] replaces the current fragment by [s]. ��V y�W yQ@@@@@@@��Y x��@�@���Р#get��b {SY�c {S\@��@����$unit��l {S_�m {Sc@@�@@@����&option��u {Sk�v {Sq@�����#url��~ {Sg� {Sj@@�@@@@�@@@�@@@@��S�������	f [get ()] returns a value of type {!url} with fields reflecting the
        state of the current Url. ��� |rt�� }��@@@@@@@��� {SU@�@���Р#set��� ���� ��@��@����#url��� ���� ��@@�@@@����$unit��� ���� ��@@�@@@�@@@@����������	_ [set u] replaces the current Url for [u]. {b WARNING:} Causes the
        document to change. ��� ����� �A_@@@@@@@��� ��@�@���Р)as_string��� �ag�� �ap@����&string��� �as�� �ay@@�@@@@����������	� [as_string] is the original string representation of the current Url. It
        is NOT necessarily equals to [string_of_url (get ())] but
        [url_of_string as_string = get ()] holds. ��� �z|�� �?@@@@@@@��� �ac@�@@��� aSd�� �@C@@����������	S This module can be used to handle the Url associated to the current
    document. ��� _���� `BR@@@@@@@��� aSS@�@@
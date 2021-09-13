Caml1999N029����            :lib/js_of_ocaml/regexp.mli����  �  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������4 Types for regexps. ��:lib/js_of_ocaml/regexp.mliU���U��@@@@@@�����������
  $ {i Warning:} the regexp syntax is the javascript one. It differs
    from the syntax used by the [Str] module from the OCaml standard
    library.

    @see <https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp#section_5> Regexp object on Mozilla Developer Network.

 ��W���]��@@@@@@���A�    �&regexp��_���_��@@@@A@���)ocaml.doc֐������7 The type for regexps. ��)`���*`�@@@@@@@��,_��@@�@���A�    �&result��6b!�7b'@@@@A@���������< The type for match result. ��Cc((�Dc(I@@@@@@@��Fb@@�@����W�������. Constructors ��UeKK�VeK^@@@@@@���Р&regexp��^g`d�_g`j@��@����&string��hg`m�ig`s@@�@@@����&regexp��qg`w�rg`}@@�@@@�@@@@��Y�������< Simple regexp constructor. ���h~~��h~�@@@@@@@���g``@�@���Р0regexp_case_fold���j����j��@��@����&string���j����j��@@�@@@����&regexp���j����j��@@�@@@�@@@@����������	P Same as [regexp] but matching will be performed in a case
    insensitive way. ���k����l@@@@@@@���j��@�@���Р0regexp_with_flag���n $��n 4@��@����&string���n 7��n =@@�@@@��@����&string���n A��n G@@�@@@����&regexp���n K��n Q@@�@@@�@@@�@@@@����������	~ Regexp constructor with flag that allow for case-insensitive search
    or multiline search (the global flag is always set). ���oRR��p��@@@@@@@���n  @�@���Р%quote���r����r��@��@����&string���r����r��@@�@@@����&string��r���r��@@�@@@�@@@@�������	@ Escapes characters with special meaning in the regexp context. ��s���s�9@@@@@@@��r��@�@���Р-regexp_string��"u;?�#u;L@��@����&string��,u;O�-u;U@@�@@@����&regexp��5u;Y�6u;_@@�@@@�@@@@���������	C [regexp_string s] creates a regexp matching the exact string [s]. ��Dv``�Ev`�@@@@@@@��Gu;;@�@���Р7regexp_string_case_fold��Px���Qx��@��@����&string��Zx���[x��@@�@@@����&regexp��cx���dx��@@�@@@�@@@@��K�������	W Same as [regexp_string] but matching will be performed in a case
    insensitive way. ��ry���sz5@@@@@@@��ux��@�@������������+ Functions ���|77��|7G@@@@@@���Р,string_match���~IM��~IY@��@����&regexp���~I\��~Ib@@�@@@��@����&string���~If��~Il@@�@@@��@����#int���~Ip��~Is@@�@@@����&option���~I~��~I�@�����&result���~Iw��~I}@@�@@@@�@@@�@@@�#@@@�/@@@@����������	� [string_match r s i] matches the string [s] starting from the [i]th
    character. Evaluates to [None] if [s] (from the [i]th character) doesn't
    match [r]. ������� A		,@@@@@@@���~II@�@���Р&search��� C	.	2�� C	.	8@��@����&regexp��� C	.	;�� C	.	A@@�@@@��@����&string��� C	.	E�� C	.	K@@�@@@��@����#int��� C	.	O�� C	.	R@@�@@@����&option�� C	.	e� C	.	k@��������#int�� C	.	W� C	.	Z@@�@@@�����&result�� C	.	]� C	.	c@@�@@@@�@@@@��! C	.	V@@@�&@@@�2@@@�>@@@@��	�������	� [search r s i] evaluates to the index of the match and the match result or
    [None] if [s] (starting from [i]) doesn't match [r]. ��0 D	l	l�1 E	�	�@@@@@@@��3 C	.	.-@�.@���Р.search_forward��< G	�	��= G	�

@��@����&regexp��F G	�
�G G	�
@@�@@@��@����&string��Q G	�
�R G	�
@@�@@@��@����#int��\ G	�
!�] G	�
$@@�@@@����&option��e G	�
7�f G	�
=@��������#int��q G	�
)�r G	�
,@@�@@@�����&result��{ G	�
/�| G	�
5@@�@@@@�@@@@��� G	�
(@@@�&@@@�2@@@�>@@@@��h�������3 Same as [search]. ��� H
>
>�� H
>
V@@@@@@@��� G	�	�-@�.@���Р.matched_string��� J
X
\�� J
X
j@��@����&result��� J
X
m�� J
X
s@@�@@@����&string��� J
X
w�� J
X
}@@�@@@�@@@@����������	V [matched_string r] return the exact substring that matched when evaluating
    [r]. ��� K
~
~�� L
�
�@@@@@@@��� J
X
X@�@���Р-matched_group��� N
�
��� N
�
�@��@����&result��� N
�
��� N
�
�@@�@@@��@����#int��� N
�
��� N
�
�@@�@@@����&option��� N
��� N
�@�����&string��� N
� �� N
�@@�@@@@�@@@�@@@�#@@@@��ڐ������	z [matched_group r i] is the [i]th group matched. Groups in matches are
  * obtained with parentheses. Groups are 1-based. �� O� PX�@@@@@@@�� N
�
�@�@���Р.global_replace�� R��� R��@��@����&regexp�� R��� R��@@�@@@��@����&string��" R���# R��@@�@@@��@����&string��- R���. R��@@�@@@����&string��6 R���7 R��@@�@@@�@@@�@@@�%@@@@�� �������	L [global_replace r s by] replaces all of the matches of [r] in [s] by [by]. ��G S���H S�@@@@@@@��J R��@�@���Р-replace_first��S U �T U-@��@����&regexp��] U0�^ U6@@�@@@��@����&string��h U:�i U@@@�@@@��@����&string��s UD�t UJ@@�@@@����&string��| UN�} UT@@�@@@�@@@�@@@�%@@@@��f�������	H [replace_first r s by] replaces the first match of [r] in [s] by [by]. ��� VUU�� VU�@@@@@@@��� U@�@���Р%split��� X���� X��@��@����&regexp��� X���� X��@@�@@@��@����&string��� X���� X��@@�@@@����$list��� X���� X��@�����&string��� X���� X��@@�@@@@�@@@�@@@�#@@@@����������	� [split r s] splits the string [s] erasing matches with [r].
    [split (regexp " ") "toto tutu tata"] is [["toto";"tutu";"tata"]].��� Y���� ZX@@@@@@@��� X��@�@���Р-bounded_split��� \Z^�� \Zk@��@����&regexp��� \Zn�� \Zt@@�@@@��@����&string��� \Zx�� \Z~@@�@@@��@����#int��� \Z��� \Z�@@�@@@����$list�� \Z�� \Z�@�����&string�� \Z�� \Z�@@�@@@@�@@@�@@@�#@@@�/@@@@����������	a [bounded_split r s i] is like [split r s] except that the result's length is
    less than [i]. ��! ]���" ^��@@@@@@@��$ \ZZ@�@@
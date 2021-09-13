Caml1999N029����   &         	$lib/js_of_ocaml/mutationObserver.mli����  "�  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������
   MutationObserver API

  A code example:
  {[
    if (MutationObserver.is_supported()) then
      let doc = Dom_html.document in
      let target =
        Js.Opt.get (doc##getElementById (Js.string "observed"))
          (fun () -> assert false)
      in
      let node = (target :> Dom.node Js.t) in
      let f records observer =
        Firebug.console##debug records ;
        Firebug.console##debug observer
      in
      MutationObserver.observe ~node ~f
        ~attributes:true ~child_list:true ~character_data:true
        ()
  ]}

  @see <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver> for API documentation.
  @see <https://dom.spec.whatwg.org/#mutation-observers> for the Web Hypertext Application Technology Working Group (WHATWG) spec. ��	$lib/js_of_ocaml/mutationObserver.mliTgg�i�p@@@@@@�����A@�4mutationObserverInit��kr}�kr�@����@��l��@@@�����)childList��m���m��@AA�����"Js.writeonly_prop��$m���%m��@�����$bool��-m���.m��@@�@@@@�@@@��2m��@@�����*attributes��:o���;o��@AA�����"Js.writeonly_prop��Do���Eo��@�����$bool��Mo���No��@@�@@@@�@@@��Ro��@@�����-characterData��Zq��[q�@AA�����"Js.writeonly_prop��dq��eq�-@�����$bool��mq��nq�@@�@@@@�@@@��rq� @@�����'subtree��zs/:�{s/A@AA�����"Js.writeonly_prop���s/I��s/Z@�����$bool���s/D��s/H@@�@@@@�@@@���s/3@@�����1attributeOldValue���u\g��u\x@AA�����"Js.writeonly_prop���u\���u\�@�����$bool���u\{��u\@@�@@@@�@@@���u\`@@�����5characterDataOldValue���w����w��@AA�����"Js.writeonly_prop���w����w��@�����$bool���w����w��@@�@@@@�@@@���w��@@�����/attributeFilter���y����y��@AA�����"Js.writeonly_prop���y���y�@������"Js!t���y�	��y�@������"Js(js_array���y����y�@������"Js!t��y���y��@������"Js)js_string��y���y��@@�@@@@�@@@@�@@@@�&@@@@�2@@@��y��4@@@��l���z %@@��krr@@@�@�����A@�.mutationRecord��'|'2�(|'@@����@��.}CK@@@�����%_type��6~LW�7~L\@AA�����"Js-readonly_prop��@~Lq�A~L�@������"Js!t��K~Ll�L~Lp@������"Js)js_string��V~L_�W~Lk@@�@@@@�@@@@�@@@��\~LP@@�����&target��d @���e @��@AA�����"Js-readonly_prop��n @���o @��@������"Js!t��y @���z @��@������#Dom$node��� @���� @��@@�@@@@�@@@@�@@@��� @��@@�����*addedNodes��� B���� B��@AA�����"Js-readonly_prop��� B���� B��@������"Js!t��� B���� B��@������#Dom(nodeList��� B���� B��@������#Dom$node��� B���� B��@@�@@@@�@@@@�@@@@�&@@@��� B��(@@�����,removedNodes��� D�	�� D�	@AA�����"Js-readonly_prop��� D�	1�� D�	A@������"Js!t��� D�	,�� D�	0@������#Dom(nodeList��� D�	�� D�	+@������#Dom$node��� D�	�� D�	@@�@@@@�@@@@�@@@@�&@@@��� D�	 (@@�����/previousSibling�� F	C	N� F	C	]@AA�����"Js-readonly_prop�� F	C	u� F	C	�@������"Js#opt�� F	C	n� F	C	t@������"Js!t��& F	C	i�' F	C	m@������#Dom$node��1 F	C	`�2 F	C	h@@�@@@@�@@@@�@@@@�&@@@��8 F	C	G(@@�����+nextSibling��@ H	�	��A H	�	�@AA�����"Js-readonly_prop��J H	�	��K H	�	�@������"Js#opt��U H	�	��V H	�	�@������"Js!t��` H	�	��a H	�	�@������#Dom$node��k H	�	��l H	�	�@@�@@@@�@@@@�@@@@�&@@@��r H	�	�(@@�����-attributeName��z J	�	��{ J	�	�@AA�����"Js-readonly_prop��� J	�	��� J	�
@������"Js#opt��� J	�	��� J	�	�@������"Js!t��� J	�	��� J	�	�@������"Js)js_string��� J	�	��� J	�	�@@�@@@@�@@@@�@@@@�&@@@��� J	�	�(@@�����2attributeNamespace��� L

�� L

*@AA�����"Js-readonly_prop��� L

F�� L

V@������"Js#opt��� L

?�� L

E@������"Js!t��� L

:�� L

>@������"Js)js_string��� L

-�� L

9@@�@@@@�@@@@�@@@@�&@@@��� L

(@@�����(oldValue��� N
X
c�� N
X
k@AA�����"Js-readonly_prop��� N
X
��� N
X
�@������"Js#opt�� N
X
�� N
X
�@������"Js!t�� N
X
{� N
X
@������"Js)js_string�� N
X
n� N
X
z@@�@@@@�@@@@�@@@@�&@@@��  N
X
\(@@@��"}CE�# O
�
�@@��%|''@@@�@�����A@�0mutationObserver��/ Q
�
��0 Q
�
�@����@��6 R
�
�@@@�����'observe��> S
�
��? S
�
�@AA��@�����"Js!t��J S
�
��K S
�
�@������#Dom$node��U S
�
��V S
�
�@@��X S
�
�@@@@�@@@��@�����"Js!t��d S
��e S
�@�����4mutationObserverInit��m S
�
��n S
�@@�@@@@�@@@�����"Js$meth��y S
��z S
�@�����$unit��� S
�
�� S
�@@�@@@@�@@@�@@@�0@@@��� S
�
�@@�����*disconnect��� U#�� U-@AA�����"Js$meth��� U5�� U<@�����$unit��� U0�� U4@@�@@@@�@@@��� U@@�����+takeRecords��� W>I�� W>T@AA�����"Js$meth��� W>|�� W>�@������"Js!t��� W>w�� W>{@������"Js(js_array��� W>k�� W>v@������"Js!t��� W>f�� W>j@�����.mutationRecord��� W>W�� W>e@@�@@@@�@@@@�@@@@�$@@@@�0@@@��� W>B2@@@��� R
�
��� X��@@��� Q
�
�@@@�@���Р<empty_mutation_observer_init��� Z���� Z��@��@����$unit�� Z��� Z��@@�@@@�����"Js!t�� Z��� Z��@�����4mutationObserverInit�� Z��� Z��@@�@@@@�@@@�@@@@@�� Z��@�@���Р0mutationObserver��( \���) \��@�����"Js&constr��2 __a�3 __j@���@�����"Js(callback��? ]�6�@ ]�A@���@�����"Js!t��L ]��M ]�@������"Js(js_array��W ]��X ]�@������"Js!t��b ]���c ]�@�����.mutationRecord��k ]���l ]��@@�@@@@�@@@@�@@@@�$@@@��@�����"Js!t��{ ]�(�| ]�,@�����0mutationObserver��� ]��� ]�'@@�@@@@�@@@����$unit��� ]�0�� ]�4@@�@@@�@@@�(@@@@��� ]��U@@@�����"Js!t��� ^BY�� ^B]@�����0mutationObserver��� ^BH�� ^BX@@�@@@@�@@@�@@@@��� ]��z@@@@@��� \��|@�}@���Р,is_supported��� alp�� al|@��@����$unit��� al�� al�@@�@@@����$bool��� al��� al�@@�@@@�@@@@@��� all@�@���Р'observe��� c���� c��@���$node�����"Js!t��� d���� d��@������#Dom$node��� d���� d��@@��� d��@@@@�@@@���!f��@�����"Js!t�� e��� e��@������"Js(js_array�� e��� e��@������"Js!t�� e��� e��@�����.mutationRecord��# e���$ e��@@�@@@@�@@@@�@@@@�$@@@��@�����"Js!t��3 e���4 e��@�����0mutationObserver��< e���= e��@@�@@@@�@@@����$unit��F e���G e�@@�@@@�@@@�(@@@���*child_list����$bool��U f�V f@@�@@@���*attributes����$bool��b g*�c g.@@�@@@���.character_data����$bool��o h/D�p h/H@@�@@@���'subtree����$bool��| iIW�} iI[@@�@@@���3attribute_old_value����$bool��� j\v�� j\z@@�@@@���8character_data_old_value����$bool��� k{��� k{�@@�@@@���0attribute_filter����$list��� l���� l��@������"Js!t��� l���� l��@������"Js)js_string��� l���� l��@@�@@@@�@@@@�@@@��@����$unit��� m���� m��@@�@@@�����"Js!t��� n���� n��@�����0mutationObserver��� n���� n��@@�@@@@�@@@�@@@��� l��@@@��� k{�@@@��� j\a@@@��� iIN@@@��� h/4@@@��� g@@@��� f@@@��� e��@@@��� d��@@@@���)ocaml.doc��������	: Helper to create a new observer and connect it to a node ��� o���� o�1@@@@@@@�� c��0@�1@@
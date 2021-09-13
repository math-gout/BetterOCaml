Caml1999N029����   $      
   	"lib/js_of_ocaml/resizeObserver.mli����  �  �  )  @�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������
  � ResizeObserver API

    A code example:
    {[
      if (ResizeObserver.is_supported ()) then
        let doc = Dom_html.document in
        let target =
          Js.Opt.get (doc##getElementById (Js.string "observed"))
            (fun () -> assert false)
        in
        let node = (target :> Dom.node Js.t) in
        let f entries observer =
          Firebug.console##debug entries;
          Firebug.console##debug observer
        in
        ResizeObserver.observe ~node ~f
          ~box:(Js.string "content-box")
          ()
    ]}

    @see <https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver> for API documentation
    @see <https://drafts.csswg.org/resize-observer> for W3C draft spec
��	"lib/js_of_ocaml/resizeObserver.mliTee�j35@@@@@@�����A@�2resizeObserverSize��l7B�l7T@����@��mW_@@@�����*inlineSize��n`k�n`u@AA�����"Js-readonly_prop��$n`~�%n`�@�����%float��-n`x�.n`}@@�@@@@�@@@��2n`d@@�����)blockSize��:p���;p��@AA�����"Js-readonly_prop��Dp���Ep��@�����%float��Mp���Np��@@�@@@@�@@@��Rp��@@@��TmWY�Uq��@@��Wl77@@@�@�����A@�3resizeObserverEntry��as���bs��@����@��ht��@@@�����&target��pu���qu� @AA�����"Js-readonly_prop��zu��{u�!@������"Js!t���u���u�@������#Dom$node���u���u�@@�@@@@�@@@@�@@@���u��@@�����+contentRect���w#.��w#9@AA�����"Js-readonly_prop���w#U��w#e@������"Js!t���w#P��w#T@������(Dom_html*clientRect���w#<��w#O@@�@@@@�@@@@�@@@���w#'@@�����-borderBoxSize���ygr��yg@AA�����"Js-readonly_prop���yg���yg�@������"Js!t���yg���yg�@������"Js(js_array���yg���yg�@������"Js!t���yg���yg�@�����2resizeObserverSize�� yg��yg�@@�@@@@�@@@@�@@@@�$@@@@�0@@@��ygk2@@�����.contentBoxSize��{���{��@AA�����"Js-readonly_prop��{��{�@������"Js!t��%{���&{�@������"Js(js_array��0{���1{��@������"Js!t��;{���<{��@�����2resizeObserverSize��D{���E{��@@�@@@@�@@@@�@@@@�$@@@@�0@@@��L{��2@@@��Nt���O|@@��Qs��@@@�@�����A@�5resizeObserverOptions��[~%�\~:@����@��b=E@@@�����#box��j @FQ�k @FT@AA�����"Js.writeonly_prop��t @Fi�u @Fz@������"Js!t�� @Fd�� @Fh@������"Js)js_string��� @FW�� @Fc@@�@@@@�@@@@�@@@��� @FJ@@@���=?�� A{�@@���~@@@�@�����A@�.resizeObserver��� C���� C��@����@��� D��@@@�����'observe��� E���� E��@AA��@�����"Js!t��� E���� E��@������#Dom$node��� E���� E��@@��� E��@@@@�@@@�����"Js$meth��� E���� E��@�����$unit��� E���� E��@@�@@@@�@@@�@@@��� E��@@�����3observe_withOptions��� G���� G��@AA��@�����"Js!t��� H�	�� H�	@������#Dom$node��  H�	� H�	@@�� H�	@@@@�@@@��@�����"Js!t�� H�	+� H�	/@�����5resizeObserverOptions�� H�	� H�	*@@�@@@@�@@@�����"Js$meth��$ H�	8�% H�	?@�����$unit��- H�	3�. H�	7@@�@@@@�@@@�@@@�0@@@��4 G��@@�����)unobserve��< J	A	L�= J	A	U@AA��@�����"Js!t��H J	A	b�I J	A	f@������#Dom$node��S J	A	Y�T J	A	a@@��V J	A	X@@@@�@@@�����"Js$meth��` J	A	o�a J	A	v@�����$unit��i J	A	j�j J	A	n@@�@@@@�@@@�@@@��o J	A	E@@�����*disconnect��w L	x	��x L	x	�@AA�����"Js$meth��� L	x	��� L	x	�@�����$unit��� L	x	��� L	x	�@@�@@@@�@@@��� L	x	|@@@��� D���� M	�	�@@��� C��@@@�@���Р=empty_resize_observer_options��� O	�	��� O	�	�@��@����$unit��� O	�	��� O	�	�@@�@@@�����"Js!t��� O	�	��� O	�	�@�����5resizeObserverOptions��� O	�	��� O	�	�@@�@@@@�@@@�@@@@@��� O	�	�@�@���Р.resizeObserver��� Q	�	��� Q	�	�@�����"Js&constr��� U

��� U

�@���@�����"Js(callback��� S
R
X�� S
R
c@���@�����"Js!t��� R

-�� R

1@������"Js(js_array��� R

!�� R

,@������"Js!t�� R

� R

 @�����3resizeObserverEntry�� R

� R

@@�@@@@�@@@@�@@@@�$@@@��@�����"Js!t�� R

D� R

H@�����.resizeObserver��& R

5�' R

C@@�@@@@�@@@����$unit��0 R

L�1 R

P@@�@@@�@@@�(@@@@��6 R

U@@@�����"Js!t��? T
d
y�@ T
d
}@�����.resizeObserver��H T
d
j�I T
d
x@@�@@@@�@@@�@@@@��N R

z@@@@@��P Q	�	�|@�}@���Р,is_supported��Y W
�
��Z W
�
�@��@����$unit��c W
�
��d W
�
�@@�@@@����$bool��l W
�
��m W
�
�@@�@@@�@@@@@��q W
�
�@�@���Р'observe��z Y
�
��{ Y
�
�@���$node�����"Js!t��� Z
�
��� Z
�
�@������#Dom$node��� Z
�
��� Z
�
�@@��� Z
�
�@@@@�@@@���!f��@�����"Js!t��� [
��� [
�@������"Js(js_array��� [
�
��� [
� @������"Js!t��� [
�
��� [
�
�@�����3resizeObserverEntry��� [
�
��� [
�
�@@�@@@@�@@@@�@@@@�$@@@��@�����"Js!t��� [
��� [
�@�����.resizeObserver��� [
�	�� [
�@@�@@@@�@@@����$unit��� [
� �� [
�$@@�@@@�@@@�(@@@���#box�����"Js!t��� \&=�� \&A@������"Js)js_string�� \&0� \&<@@�@@@@�@@@��@����$unit�� ]BG� ]BK@@�@@@�����"Js!t�� ^L`� ^Ld@�����.resizeObserver��$ ^LQ�% ^L_@@�@@@@�@@@�@@@��* \&+@@@��, [
�
�@@@��. Z
�
�@@@@���)ocaml.doc鐠�����	; Helper to create a new observer and connect it to a node. ��< _ee�= _e�@@@@@@@��? Y
�
�$@�%@@
Caml1999N029����            7compiler/lib/base64.mli����  "A  �  �  B�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����4js_of_ocaml_compiler��.<command-line>A@A�A@U@@��A@@�A@V@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������
  , Base64 RFC4648 implementation.

    Base64 is a group of similar binary-to-text encoding schemes that represent
    binary data in an ASCII string format by translating it into a radix-64
    representation. It is specified in RFC 4648.

    {e Release 3.9.1 - http://ocsigen.github.io/js_of_ocaml} ��7compiler/lib/base64.mliU���[�@@@@@@���A�    �&result��]�]#@����!a��]�]@@@�BA����!b��]�]@@@	@@��Р"Ok��$^&*�%^&,@����!a��,^&0�-^&2@@@@@��/^&(@@�Р%Error��5_37�6_3<@����!b��=_3@�>_3B@@@@@��@_35@@@A@@��B]@@�@���A�    �(alphabet��LaDI�MaDQ@@@@A@���)ocaml.doc�������3 Type of alphabet. ��[bRR�\bRj@@@@@@@��^aDD@@�@���A�    �#sub��hdlq�idlt@@@@A��������&string��tdlw�udl}@@�@@@�����#int��~dl��dl�@@�@@@�����#int���dl���dl�@@�@@@@�@@@��>�������	& Type of sub-string: [str, off, len]. ���e����e��@@@@@@@���dll@@�@���Р0default_alphabet���g����g��@����(alphabet���g����g��@@�@@@@��`�������	A A 64-character alphabet specifying the regular Base64 alphabet. ���h����h�@@@@@@@���g��@�@���Р1uri_safe_alphabet���j#��j4@����(alphabet���j7��j?@@�@@@@����������	T A 64-character alphabet specifying the URI- and filename-safe Base64
    alphabet. ���k@@��l��@@@@@@@���j@�@���Р-make_alphabet���n����n��@��@����&string���n����n��@@�@@@����(alphabet���n����n��@@�@@@�@@@@����������6 Make a new alphabet. ��	o���
o��@@@@@@@��n��@�@���Р/length_alphabet��q���q��@��@����(alphabet��q��� q��@@�@@@����#int��(q��)q�@@�@@@�@@@@��ސ������	/ Returns length of the alphabet, should be 64. ��7r�8r9@@@@@@@��:q��@�@���Р(alphabet��Ct;?�Dt;G@��@����(alphabet��Mt;J�Nt;R@@�@@@����%array��Vt;Z�Wt;_@�����#int��_t;V�`t;Y@@�@@@@�@@@�@@@@���������7 Returns the alphabet. ��ou``�pu`|@@@@@@@��rt;;@�@���Р*decode_exn��{w~��|w~�@���#pad����$bool���x����x��@@�@@@���(alphabet����(alphabet���x����x��@@�@@@���#off����#int���x����x��@@�@@@���#len����#int���x����x��@@�@@@��@����&string���x����x��@@�@@@����&string���x����x��@@�@@@�@@@���x��@@@���x��@@@���x��	@@@���x��@@@@����������
  � [decode_exn ?off ?len s] decodes [len] bytes (defaults to [String.length s -
    off]) of the string [s] starting from [off] (defaults to [0]) that is encoded
    in Base64 format. Will leave trailing NULLs on the string, padding it out to
    a multiple of 3 characters. [alphabet] defaults to {!default_alphabet}. [pad
    = true] specifies to check if [s] is padded or not, otherwise, it raises an
    exception.

    Decoder can fail when character of [s] is not a part of [alphabet] or is not
    [padding] character. If input is not padded correctly, decoder does the
    best-effort but it does not ensure [decode_exn (encode ~pad:false x) = x].

    @raise if Invalid_argument [s] is not a valid Base64 string. ���y���� D
o
�@@@@@@@���w~~@�@���Р*decode_sub��� F
�
��� F
�
�@���#pad����$bool��� G
�
��� G
�
�@@�@@@���(alphabet����(alphabet��� H
�
��� H
�
�@@�@@@���#off����#int�� I
�
�� I
�
�@@�@@@���#len����#int�� J
�� J
�@@�@@@��@����&string��# K�$ K@@�@@@����&result��, L3�- L9@�����#sub��5 L�6 L@@�@@@�������#Msg��A L!�B L%@@�����&string��J L)�K L/@@�@@@@�@@@@@��O L�P L1@@@@��R L&@@@�1'@@@��U J
�
�)@@@��W I
�
�+@@@��Y H
�
�-@@@��[ G
�
�/@@@@���������
   Same as {!decode_exn} but it returns a result type instead to raise an
    exception. Then, it returns a {!sub} string. Decoded input [(str, off, len)]
    will starting to [off] and will have [len] bytes - by this way, we ensure to
    allocate only one time result. ��g M::�h P'L@@@@@@@��j F
�
�>@�?@���Р&decode��s RNR�t RNX@���#pad����$bool�� S[e�� S[i@@�@@@���(alphabet����(alphabet��� Tjy�� Tj�@@�@@@���#off����#int��� U���� U��@@�@@@���#len����#int��� V���� V��@@�@@@��@����&string��� W���� W��@@�@@@����&result��� X���� X��@�����&string��� X���� X��@@�@@@�������#Msg��� X���� X��@@�����&string��� X���� X��@@�@@@@�@@@@@��� X���� X��@@@@��� X��&@@@�1'@@@��� V��)@@@��� U��+@@@��� Tjo-@@@��� S[`/@@@@����������	U Same as {!decode_exn}, but returns an explicit error message {!result} if it fails. ��� Y���� Y�-@@@@@@@��� RNN>@�?@���Р&encode�� [/3� [/9@���#pad����$bool�� \<F� \<J@@�@@@���(alphabet����(alphabet�� ]KZ� ]Kb@@�@@@���#off����#int��' ^cm�( ^cp@@�@@@���#len����#int��4 _q{�5 _q~@@�@@@��@����&string��? `��@ `�@@�@@@����&result��H a���I a��@�����&string��Q a���R a��@@�@@@�������#Msg��] a���^ a��@@�����&string��f a���g a��@@�@@@@�@@@@@��k a���l a��@@@@��n a��&@@@�1'@@@��q _qv)@@@��s ^ch+@@@��u ]KP-@@@��w \<A/@@@@��*�������	� [encode s] encodes the string [s] into base64. If [pad] is false, no
    trailing padding is added. [pad] defaults to [true], and [alphabet] to
    {!default_alphabet}.

    [encode] fails when [off] and [len] do not designate a valid range of [s]. ��� b���� fb�@@@@@@@��� [//>@�?@���Р-encode_string��� h���� h��@���#pad����$bool��� h���� h��@@�@@@���(alphabet����(alphabet��� h���� h��@@�@@@��@����&string��� h���� h��@@�@@@����&string��� h���� h��@@�@@@�@@@��� h��@@@��� h��@@@@��v�������	� [encode_string s] encodes the string [s] into base64. If [pad] is false, no
    trailing padding is added. [pad] defaults to [true], and [alphabet] to
    {!default_alphabet}. ��� i���� k��@@@@@@@��� h��@�@���Р*encode_sub��� m���� m��@���#pad����$bool��� n���� n��@@�@@@���(alphabet����(alphabet��� o���� o��@@�@@@���#off����#int�� p��� p��@@�@@@���#len����#int�� q�� q�@@�@@@��@����&string�� r	� r	@@�@@@����&result��" s4�# s:@�����#sub��+ s�, s@@�@@@�������#Msg��7 s"�8 s&@@�����&string��@ s*�A s0@@�@@@@�@@@@@��E s �F s2@@@@��H s&@@@�1'@@@��K q� )@@@��M p��+@@@��O o��-@@@��Q n��/@@@@���������	� Same as {!encode} but return a {!sub}-string instead a plain result. By this
    way, we ensure to allocate only one time result. ��] t;;�^ u��@@@@@@@��` m��>@�?@���Р*encode_exn��i w���j w��@���#pad����$bool��u x���v x��@@�@@@���(alphabet����(alphabet��� x���� x��@@�@@@���#off����#int��� x� �� x�@@�@@@���#len����#int��� x��� x�@@�@@@��@����&string��� x��� x�@@�@@@����&string��� x��� x�#@@�@@@�@@@��� x�@@@��� x��@@@��� x��	@@@��� x��@@@@��n�������	Y Same as {!encode} but raises an invalid argument exception if we retrieve an
    error. ��� y$$�� zu�@@@@@@@��� w��@�@@
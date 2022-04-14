;;-----------------------------LICENSE NOTICE------------------------------------
;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
;;  Copyright (C) 2021 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
;;  Copyright (C) 2021 Arnaud Bouche (@Arnaud6128)
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Lesser General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Lesser General Public License for more details.
;;
;;  You should have received a copy of the GNU Lesser General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;-------------------------------------------------------------------------------
.module cpct_sprites

.include "macros/cpct_undocumentedOpcodes.h.s"

;;
;; ASM bindings for <cpct_spriteMaskedColourizeM0>
;;
;;   3 us, 1 bytes
;;
cpct_spriteMaskedColourizeM0_asm:: ;; Assembly entry point

   ;; Include common code
   .include /cpct_spriteMaskedColourizeM0.asm/

   ;; Generate the code with just 2 increment of HL at the end of every loop pass
   ;; as the array/sprite is to be composed of consecutive bytes 
   cpctm_generate_spriteMaskedColourizeM0 2
   
   ret               ;; [3] Return to caller
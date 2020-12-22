library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity TL is
	port(
		CLK, RST, START : in std_logic;
		VCC_OUT : out std_logic_vector (63 downto 0);
		GND_OUT : out std_logic_vector(7 downto 0)
		--LED_CLK_100: out std_logic
	);
end TL;

architecture ARC of TL is 
component TEMPO is
	port (
		clk, rst, start: in std_logic;
		tempo_out : out integer range 0 to 2530
	);
end component TEMPO;

component CLK_Y is
	port (
		clk, rst, start: in std_logic;
		clk_out : out std_logic
	);
end component CLK_Y;

component CLK_X is
	port (
		clk, rst, start: in std_logic;
		clk_out : out std_logic
	);
end component CLK_X;

component CLK_10Hz is
	port (
		clk, rst, start: in std_logic;
		clk_out : out std_logic
	);
end component CLK_10Hz;

component prueba is 
port(
	  CLK, START  : in std_logic;
	  animation : in integer;
	  VCC_OUT : out std_logic_vector (63 downto 0);
	  GND_OUT : out std_logic_vector(7 downto 0)
     );
end component prueba;

signal CLK_100, main_clock: std_logic;
signal time_count, animation_choice: integer;

begin


--TEMPO and ANIMATIONS
Counter_tempo: TEMPO port map(main_clock, RST, START , time_count);
animations : prueba port map(clk_100, START, animation_choice, VCC_OUT, GND_OUT);

-- CLOCKS --
GlobalClock: CLK_10Hz port map(CLK, RST, START, main_clock);
Clock_X: CLK_X port map(CLK, RST, START, clk_100);

--LED_CLK_100 <= CLK_100;
process(time_count)

	begin
		case time_count is
			--Animaciones
			when 0 to 6 => animation_choice<=0;--186
			when 7 to 13 => animation_choice<=0;	
			when 14 to 20 => animation_choice<=1;
			when 21 to 27 => animation_choice<=0;
			when 28 to 34 => animation_choice<=1;
			when 35 to 41 => animation_choice<=0;
			when 42 to 48 => animation_choice<=1;
			when 49 to 55 => animation_choice<=0;	
			when 56 to 62 => animation_choice<=1;
			when 63 to 69 => animation_choice<=0;
			when 70 to 76 => animation_choice<=1;
			when 77 to 83 => animation_choice<=0;
			when 84 to 90 => animation_choice<=1;
			when 91 to 97 => animation_choice<=0;	
			when 98 to 104 => animation_choice<=1;
			when 105 to 111 => animation_choice<=0;
			when 112 to 119 => animation_choice<=1;
			when 120 to 126 => animation_choice<=0;
			when 127 to 133 => animation_choice<=1;

			when 134 to 136 => animation_choice<=0;
			
			when 137 =>	animation_choice<=2;
			when 138 =>	animation_choice<=3;
			when 139 =>	animation_choice<=4;
			when 140 =>	animation_choice<=5;
			when 141 =>	animation_choice<=6;
			when 142 =>	animation_choice<=7;
			when 143 =>	animation_choice<=8;
			when 144 =>	animation_choice<=9;
		
			when 145 =>	animation_choice<=0;
		
			when 146 =>	animation_choice<=10;
			when 147 =>	animation_choice<=11;
			when 148 =>	animation_choice<=12;
			when 149 =>	animation_choice<=13;
			when 150 =>	animation_choice<=14;
			when 151 =>	animation_choice<=15;
			when 152 =>	animation_choice<=16;
			when 153 =>	animation_choice<=17;
			
			when 154 =>	animation_choice<=0;
			
			when 155 =>	animation_choice<=9;
			when 156 =>	animation_choice<=8;
			when 157 =>	animation_choice<=7;
			when 158 =>	animation_choice<=6;
			when 159 =>	animation_choice<=5;
			when 160 =>	animation_choice<=4;
			when 161 =>	animation_choice<=3;
			when 162 =>	animation_choice<=2;
		
			when 163 =>	animation_choice<=0;
		
			when 164 =>	animation_choice<=17;
			when 165 =>	animation_choice<=16;
			when 166 =>	animation_choice<=15;
			when 167 =>	animation_choice<=14;
			when 168 =>	animation_choice<=13;
			when 169 =>	animation_choice<=12;
			when 170 =>	animation_choice<=11;
			when 171 =>	animation_choice<=10;
			
			when 172 =>	animation_choice<=0;
			
			when 173 =>	animation_choice<=18;
			when 174 =>	animation_choice<=19;
			when 175 =>	animation_choice<=20;
			when 176 =>	animation_choice<=21;
			
			when 177 =>	animation_choice<=18;
			when 178 =>	animation_choice<=19;
			when 179 =>	animation_choice<=20;
			when 180 =>	animation_choice<=21;
			
			when 181 =>	animation_choice<=18;
			when 182 =>	animation_choice<=19;
			when 183 =>	animation_choice<=20;
			when 184 =>	animation_choice<=21;
			
			when 185 =>	animation_choice<=18;
			when 186 =>	animation_choice<=19;
			when 187 =>	animation_choice<=20;
			when 188 =>	animation_choice<=21;
			
			when 189 =>	animation_choice<=18;
			when 190 =>	animation_choice<=19;
			when 191 =>	animation_choice<=20;
			when 192 =>	animation_choice<=21;
			
			when 193 =>	animation_choice<=18;
			when 194 =>	animation_choice<=19;
			when 195 =>	animation_choice<=20;
			when 196 =>	animation_choice<=21;
			
			when 197 =>	animation_choice<=18;
			when 198 =>	animation_choice<=19;
			when 199 =>	animation_choice<=20;
			when 200 =>	animation_choice<=21;
			
			when 201 =>	animation_choice<=18;
			when 202 =>	animation_choice<=19;
			when 203 =>	animation_choice<=20;
			when 204 =>	animation_choice<=21;
			
			when 205 =>	animation_choice<=18;
			when 206 =>	animation_choice<=19;
			when 207 =>	animation_choice<=20;
			when 208 =>	animation_choice<=21;
			
			when 209 =>	animation_choice<=18;
			when 210 =>	animation_choice<=19;
			when 211 =>	animation_choice<=20;
			when 212 =>	animation_choice<=21;
			
			when 213 =>	animation_choice<=18;
			when 214 =>	animation_choice<=19;
			when 215 =>	animation_choice<=20;
			when 216 =>	animation_choice<=21;
			
			when 217 =>	animation_choice<=18;
			when 218 =>	animation_choice<=19;
			when 219 =>	animation_choice<=20;
			when 220 =>	animation_choice<=21;
			
			when 221 =>	animation_choice<=18;
			when 222 =>	animation_choice<=19;
			when 223 =>	animation_choice<=20;
			when 224 =>	animation_choice<=21;
			
			when 225 =>	animation_choice<=2;
			when 226 =>	animation_choice<=3;
			when 227 =>	animation_choice<=4;
			when 228 =>	animation_choice<=5;
			when 229 =>	animation_choice<=6;
			when 230 =>	animation_choice<=7;
			when 231 =>	animation_choice<=8;
			when 232 =>	animation_choice<=9;
		
			when 233 =>	animation_choice<=0;
		
			when 234 =>	animation_choice<=10;
			when 235 =>	animation_choice<=11;
			when 236 =>	animation_choice<=12;
			when 237 =>	animation_choice<=13;
			when 238 =>	animation_choice<=14;
			when 239 =>	animation_choice<=15;
			when 240 =>	animation_choice<=16;
			when 241 =>	animation_choice<=17;
			
			when 242 =>	animation_choice<=0;
			
			when 243 =>	animation_choice<=9;
			when 244 =>	animation_choice<=8;
			when 245 =>	animation_choice<=7;
			when 247 =>	animation_choice<=6;
			when 248 =>	animation_choice<=5;
			when 249 =>	animation_choice<=4;
			when 250 =>	animation_choice<=3;
			when 251 =>	animation_choice<=2;
		
			when 252 =>	animation_choice<=0;
		
			when 253 =>	animation_choice<=17;
			when 254 =>	animation_choice<=16;
			when 255 =>	animation_choice<=15;
			when 256 =>	animation_choice<=14;
			when 257 =>	animation_choice<=13;
			when 258 =>	animation_choice<=12;
			when 259 =>	animation_choice<=11;
			when 260 =>	animation_choice<=10;
			
			when 263 =>	animation_choice<=18;
			when 264 =>	animation_choice<=19;
			when 265 =>	animation_choice<=20;
			when 266 =>	animation_choice<=21;
			
			when 267 =>	animation_choice<=18;
			when 268 =>	animation_choice<=19;
			when 269 =>	animation_choice<=20;
			when 270 =>	animation_choice<=21;
			
			when 271 =>	animation_choice<=18;
			when 272 =>	animation_choice<=19;
			when 273 =>	animation_choice<=20;
			when 274 =>	animation_choice<=21;
			
			when 275 =>	animation_choice<=18;
			when 276 =>	animation_choice<=19;
			when 277 =>	animation_choice<=20;
			when 278 =>	animation_choice<=21;
			
			when 279 =>	animation_choice<=18;
			when 280 =>	animation_choice<=19;
			when 281 =>	animation_choice<=20;
			when 282 =>	animation_choice<=21;
			
			when 283 =>	animation_choice<=18;
			when 284 =>	animation_choice<=19;
			when 285 =>	animation_choice<=20;
			when 286 =>	animation_choice<=21;
			
			when 287 =>	animation_choice<=18;
			when 288 =>	animation_choice<=19;
			when 289 =>	animation_choice<=20;
			when 290 =>	animation_choice<=21;
			
			when 291 =>	animation_choice<=18;
			when 292 =>	animation_choice<=19;
			when 293 =>	animation_choice<=20;
			when 294 =>	animation_choice<=21;
			
			when 295 =>	animation_choice<=18;
			when 296 =>	animation_choice<=19;
			when 297 =>	animation_choice<=20;
			when 298 =>	animation_choice<=21;
			
			when 299 =>	animation_choice<=18;
			when 300 =>	animation_choice<=19;
			when 301 =>	animation_choice<=20;
			when 302 =>	animation_choice<=21;
			
			when 303 =>	animation_choice<=18;
			when 304 =>	animation_choice<=19;
			when 305 =>	animation_choice<=20;
			when 306 =>	animation_choice<=21;
			
			when 307 =>	animation_choice<=18;
			when 308 =>	animation_choice<=19;
			when 309 =>	animation_choice<=20;
			when 310 =>	animation_choice<=21;
			
			when 311 =>	animation_choice<=2;
			when 312 =>	animation_choice<=3;
			when 313 =>	animation_choice<=4;
			when 314 =>	animation_choice<=5;
			when 315 =>	animation_choice<=6;
			when 316 =>	animation_choice<=7;
			when 317 =>	animation_choice<=8;
			when 318 =>	animation_choice<=9;
		
			when 319 =>	animation_choice<=0;
		
			when 320 =>	animation_choice<=10;
			when 321 =>	animation_choice<=11;
			when 322 =>	animation_choice<=12;
			when 323 =>	animation_choice<=13;
			when 324 =>	animation_choice<=14;
			when 325 =>	animation_choice<=15;
			when 326 =>	animation_choice<=16;
			when 327 =>	animation_choice<=17;
			
			when 328 =>	animation_choice<=0;
			
			when 329 =>	animation_choice<=9;
			when 330 =>	animation_choice<=8;
			when 331 =>	animation_choice<=7;
			when 332 =>	animation_choice<=6;
			when 333 =>	animation_choice<=5;
			when 334 =>	animation_choice<=4;
			when 335 =>	animation_choice<=3;
			when 336 =>	animation_choice<=2;
		
			when 337 =>	animation_choice<=0;
			
			when 338 =>	animation_choice<=17;
			when 339 =>	animation_choice<=16;
			when 340 =>	animation_choice<=15;
			when 341 =>	animation_choice<=14;
			when 342 =>	animation_choice<=13;
			when 343 =>	animation_choice<=12;
			when 344 =>	animation_choice<=11;
			when 345 =>	animation_choice<=10;
		
			when 346 =>	animation_choice<=0;
			
			when 347 =>	animation_choice<=22;
			when 348 =>	animation_choice<=23;
			when 349 =>	animation_choice<=24;
			when 350 =>	animation_choice<=25;
			when 351 =>	animation_choice<=26;
			when 352 =>	animation_choice<=27;
			when 353 =>	animation_choice<=28;
			when 354 =>	animation_choice<=29;
			
			when 355 =>	animation_choice<=22;
			when 356 =>	animation_choice<=23;
			when 357 =>	animation_choice<=24;
			when 358 =>	animation_choice<=25;
			when 359 =>	animation_choice<=26;
			when 360 =>	animation_choice<=27;
			when 361 =>	animation_choice<=28;
			when 362 =>	animation_choice<=29;
			
			when 363 to 364 =>	animation_choice<=30;
			when 365 to 367 =>	animation_choice<=31;
			when 368 to 370 =>	animation_choice<=32;
			when 371 to 373 =>	animation_choice<=33;
			when 374 to 376 =>	animation_choice<=34;
			when 377 to 379 =>	animation_choice<=35;
			when 380 to 382 =>	animation_choice<=36;
			when 383 to 386 =>	animation_choice<=37;
			when 387 to 389 =>	animation_choice<=38;
			when 390 to 392 =>	animation_choice<=39;
			when 393 to 395 =>	animation_choice<=40;
			when 396 to 398 =>	animation_choice<=41;
			
			when 399 to 401 =>	animation_choice<=41;
			when 402 to 404 =>	animation_choice<=40;
			when 405 to 407 =>	animation_choice<=39;
			when 408 to 410 =>	animation_choice<=38;
			when 411 to 413 =>	animation_choice<=37;
			when 414 to 416 =>	animation_choice<=36;
			when 417 to 419 =>	animation_choice<=35;
			when 420 to 422 =>	animation_choice<=34;
			when 423 to 425 =>	animation_choice<=33;
			when 426 to 428 =>	animation_choice<=32;
			when 429 to 430 =>	animation_choice<=31;
			when 431 to 433 =>	animation_choice<=30;
			
			when 434 to 436 =>	animation_choice<=30;
			when 437 to 439 =>	animation_choice<=31;
			when 440 to 442 =>	animation_choice<=32;
			when 443 to 445 =>	animation_choice<=33;
			when 446 to 448 =>	animation_choice<=34;
			when 449 to 451 =>	animation_choice<=35;
			when 452 to 454 =>	animation_choice<=36;
			when 455 to 457 =>	animation_choice<=37;
			when 458 to 460 =>	animation_choice<=38;
			when 461 to 463 =>	animation_choice<=39;
			when 464 to 467 =>	animation_choice<=40;
			when 468 to 470 =>	animation_choice<=41;
			
			when 471 to 473 =>	animation_choice<=41;
			when 474 to 476 =>	animation_choice<=40;
			when 477 to 480 =>	animation_choice<=39;
			when 481 to 483 =>	animation_choice<=38;
			when 484 to 486 =>	animation_choice<=37;
			when 487 to 490 =>	animation_choice<=36;
			when 491 to 493 =>	animation_choice<=35;
			when 494 to 496 =>	animation_choice<=34;
			when 497 to 500 =>	animation_choice<=33;
			when 501 to 503 =>	animation_choice<=32;
			when 504 to 506 =>	animation_choice<=31;
			when 507 to 509 =>	animation_choice<=30;
			
			when 510 =>	animation_choice<=18;
			when 511 =>	animation_choice<=19;
			when 512 =>	animation_choice<=20;
			when 513 =>	animation_choice<=21;
			
			when 514 =>	animation_choice<=18;
			when 515 =>	animation_choice<=19;
			when 516 =>	animation_choice<=20;
			when 517 =>	animation_choice<=21;
			
			when 518 =>	animation_choice<=18;
			when 519 =>	animation_choice<=19;
			when 520 =>	animation_choice<=20;
			when 521 =>	animation_choice<=21;
			
			when 522 =>	animation_choice<=18;
			when 523 =>	animation_choice<=19;
			when 524 =>	animation_choice<=20;
			when 525 =>	animation_choice<=21;
			
			when 526 =>	animation_choice<=18;
			when 527 =>	animation_choice<=19;
			when 528 =>	animation_choice<=20;
			when 529 =>	animation_choice<=21;
			
			when 530 =>	animation_choice<=18;
			when 531 =>	animation_choice<=19;
			when 532 =>	animation_choice<=20;
			when 533 =>	animation_choice<=21;
			
			when 534 =>	animation_choice<=18;
			when 535 =>	animation_choice<=19;
			when 536 =>	animation_choice<=20;
			when 537 =>	animation_choice<=21;
			
			when 538 =>	animation_choice<=18;
			when 539 =>	animation_choice<=19;
			when 540 =>	animation_choice<=20;
			when 541 =>	animation_choice<=21;
			
			
			--
			when 542 =>	animation_choice<=21;
			when 543 =>	animation_choice<=20;
			when 544 =>	animation_choice<=19;
			when 545 =>	animation_choice<=18;
			
			
			when 546 =>	animation_choice<=21;
			when 547 =>	animation_choice<=20;
			when 548 =>	animation_choice<=19;
			when 549 =>	animation_choice<=18;
			
			when 550 =>	animation_choice<=21;
			when 551 =>	animation_choice<=20;
			when 552 =>	animation_choice<=19;
			when 553 =>	animation_choice<=18;
			
			when 554 =>	animation_choice<=21;
			when 555 =>	animation_choice<=20;
			when 556 =>	animation_choice<=19;
			when 557 =>	animation_choice<=18;
			
			when 558 =>	animation_choice<=21;
			when 559 =>	animation_choice<=20;
			when 560 =>	animation_choice<=19;
			when 561 =>	animation_choice<=18;
			
			when 562 =>	animation_choice<=21;
			when 563 =>	animation_choice<=20;
			when 564 =>	animation_choice<=19;
			when 565 =>	animation_choice<=18;
			
			when 566 =>	animation_choice<=21;
			when 567 =>	animation_choice<=20;
			when 568 =>	animation_choice<=19;
			when 569 =>	animation_choice<=18;
			
			when 570 =>	animation_choice<=21;
			when 571 =>	animation_choice<=20;
			when 572 =>	animation_choice<=19;
			when 573 =>	animation_choice<=18;
			--
			when 574 =>	animation_choice<=18;
			when 575 =>	animation_choice<=19;
			when 576 =>	animation_choice<=20;
			when 577 =>	animation_choice<=21;
			
			when 578 =>	animation_choice<=18;
			when 579 =>	animation_choice<=19;
			when 580 =>	animation_choice<=20;
			when 581 =>	animation_choice<=21;
			
			when 582 =>	animation_choice<=18;
			when 583 =>	animation_choice<=19;
			when 584 =>	animation_choice<=20;
			when 585 =>	animation_choice<=21;
			
			when 586 =>	animation_choice<=18;
			when 587 =>	animation_choice<=19;
			when 588 =>	animation_choice<=20;
			when 589 =>	animation_choice<=21;
			
			when 590 =>	animation_choice<=93;
			when 591 =>	animation_choice<=94;
			when 592 =>	animation_choice<=95;
			when 593 =>	animation_choice<=96;
		
			when 594 =>	animation_choice<=97;
			when 595 =>	animation_choice<=98;
			when 596 =>	animation_choice<=99;
			when 597 =>	animation_choice<=100;
			
			when 598 =>	animation_choice<=101;
			when 599 =>	animation_choice<=102;
			when 600 =>	animation_choice<=103;
			when 601 =>	animation_choice<=104;
			
			when 602 =>	animation_choice<=105;
			when 603 =>	animation_choice<=106;
			when 604 =>	animation_choice<=107;
			when 605 =>	animation_choice<=108;
			-- RECTANGULO 
			when 606 =>	animation_choice<=42;
			when 607 =>	animation_choice<=43;
			when 608 =>	animation_choice<=44;
			when 609 =>	animation_choice<=45;
		
			when 610 =>	animation_choice<=45;
			when 611 =>	animation_choice<=44;
			when 612 =>	animation_choice<=43;
			when 613 =>	animation_choice<=42;
			
			when 614 =>	animation_choice<=42;
			when 615 =>	animation_choice<=43;
			when 616 =>	animation_choice<=44;
			when 617 =>	animation_choice<=45;
		
			when 618 =>	animation_choice<=45;
			when 619 =>	animation_choice<=44;
			when 620 =>	animation_choice<=43;
			when 621 =>	animation_choice<=42;
			
			when 622 =>	animation_choice<=42;
			when 623 =>	animation_choice<=43;
			when 624 =>	animation_choice<=44;
			when 625 =>	animation_choice<=45;
		
			when 626 =>	animation_choice<=45;
			when 627 =>	animation_choice<=44;
			when 628 =>	animation_choice<=43;
			when 629 =>	animation_choice<=42;
			
			when 630 =>	animation_choice<=42;
			when 631 =>	animation_choice<=43;
			when 632 =>	animation_choice<=44;
			when 633 =>	animation_choice<=45;
		
			when 634 =>	animation_choice<=45;
			when 635 =>	animation_choice<=44;
			when 636 =>	animation_choice<=43;
			when 637 =>	animation_choice<=42;
			
			when 638 =>	animation_choice<=42;
			when 639 =>	animation_choice<=43;
			when 640 =>	animation_choice<=44;
			when 641 =>	animation_choice<=45;
		
			when 642 =>	animation_choice<=45;
			when 643 =>	animation_choice<=44;
			when 644 =>	animation_choice<=43;
			when 645 =>	animation_choice<=42;
			
			when 646 =>	animation_choice<=42;
			when 647 =>	animation_choice<=43;
			when 648 =>	animation_choice<=44;
			when 649 =>	animation_choice<=45;
		
			when 650 =>	animation_choice<=45;
			when 651 =>	animation_choice<=44;
			when 652 =>	animation_choice<=43;
			when 653 =>	animation_choice<=42;
			
			--POR HACER
			when 654 =>	animation_choice<=18;
			when 655 =>	animation_choice<=19;
			when 656 =>	animation_choice<=20;
			when 657 =>	animation_choice<=21;
			
			when 658 =>	animation_choice<=18;
			when 659 =>	animation_choice<=19;
			when 660 =>	animation_choice<=20;
			when 661 =>	animation_choice<=21;
			
			when 662 =>	animation_choice<=18;
			when 663 =>	animation_choice<=19;
			when 664 =>	animation_choice<=20;
			when 665 =>	animation_choice<=21;
		
			when 666 =>	animation_choice<=18;
			when 667 =>	animation_choice<=19;
			when 668 =>	animation_choice<=20;
			when 669 =>	animation_choice<=21;
			
			when 670 =>	animation_choice<=18;
			when 671 =>	animation_choice<=19;
			when 672 =>	animation_choice<=20;
			when 673 =>	animation_choice<=21;
			
			when 674 =>	animation_choice<=18;
			when 675 =>	animation_choice<=19;
			when 676 =>	animation_choice<=20;
			when 677 =>	animation_choice<=21;
			
			when 678 =>	animation_choice<=18;
			when 679 =>	animation_choice<=19;
			when 680 =>	animation_choice<=20;
			when 681 =>	animation_choice<=21;
			
			when 682 =>	animation_choice<=18;
			when 683 =>	animation_choice<=19;
			when 684 =>	animation_choice<=20;
			when 685 =>	animation_choice<=21;
			
			
			--
			when 686 =>	animation_choice<=21;
			when 687 =>	animation_choice<=20;
			when 688 =>	animation_choice<=19;
			when 689 =>	animation_choice<=18;
			
		
			when 690 =>	animation_choice<=21;
			when 691 =>	animation_choice<=20;
			when 692 =>	animation_choice<=19;
			when 693 =>	animation_choice<=18;
			
			when 694 =>	animation_choice<=21;
			when 695 =>	animation_choice<=20;
			when 696 =>	animation_choice<=19;
			when 697 =>	animation_choice<=18;
			
			when 698 =>	animation_choice<=21;
			when 699 =>	animation_choice<=20;
			when 700 =>	animation_choice<=19;
			when 701 =>	animation_choice<=18;
			
			when 702 =>	animation_choice<=21;
			when 703 =>	animation_choice<=20;
			when 704 =>	animation_choice<=19;
			when 705 =>	animation_choice<=18;
			
			when 706 =>	animation_choice<=21;
			when 707 =>	animation_choice<=20;
			when 708 =>	animation_choice<=19;
			when 709 =>	animation_choice<=18;
		
			when 710 =>	animation_choice<=21;
			when 711 =>	animation_choice<=20;
			when 712 =>	animation_choice<=19;
			when 713 =>	animation_choice<=18;
			
			when 714 =>	animation_choice<=21;
			when 715 =>	animation_choice<=20;
			when 716 =>	animation_choice<=19;
			when 717 =>	animation_choice<=18;
			--
			when 718 =>	animation_choice<=18;
			when 719 =>	animation_choice<=19;
			when 720 =>	animation_choice<=20;
			when 721 =>	animation_choice<=21;
			
			when 722 =>	animation_choice<=18;
			when 723 =>	animation_choice<=19;
			when 724 =>	animation_choice<=20;
			when 725 =>	animation_choice<=21;
			
			when 726 =>	animation_choice<=18;
			when 727 =>	animation_choice<=19;
			when 728 =>	animation_choice<=20;
			when 729 =>	animation_choice<=21;
			
			when 730 =>	animation_choice<=18;
			when 731 =>	animation_choice<=19;
			when 732 =>	animation_choice<=20;
			when 733 =>	animation_choice<=21;
			
			when 734 =>	animation_choice<=93;
			when 735 =>	animation_choice<=94;
			when 736 =>	animation_choice<=95;
			when 737 =>	animation_choice<=96;
	
			when 738 =>	animation_choice<=97;
			when 739 =>	animation_choice<=98;
			when 740 =>	animation_choice<=99;
			when 741 =>	animation_choice<=100;
		
			when 742 =>	animation_choice<=101;
			when 743 =>	animation_choice<=102;
			when 744 =>	animation_choice<=103;
			when 745 =>	animation_choice<=104;
			
			when 746 =>	animation_choice<=105;
			when 747 =>	animation_choice<=106;
			when 748 =>	animation_choice<=107;
			when 749 =>	animation_choice<=108;
			-- RECTANGULO 
			when 750 =>	animation_choice<=42;
			when 751 =>	animation_choice<=43;
			when 752 =>	animation_choice<=44;
			when 753 =>	animation_choice<=45;
		
			when 754 =>	animation_choice<=45;
			when 755 =>	animation_choice<=44;
			when 756 =>	animation_choice<=43;
			when 757 =>	animation_choice<=42;
			
			when 758 =>	animation_choice<=42;
			when 759 =>	animation_choice<=43;
			when 760 =>	animation_choice<=44;
			when 761 =>	animation_choice<=45;
		
			when 762 =>	animation_choice<=45;
			when 763 =>	animation_choice<=44;
			when 764 =>	animation_choice<=43;
			when 765 =>	animation_choice<=42;
			
			when 766 =>	animation_choice<=42;
			when 767 =>	animation_choice<=43;
			when 768 =>	animation_choice<=44;
			when 769 =>	animation_choice<=45;
		
			when 770 =>	animation_choice<=45;
			when 771 =>	animation_choice<=44;
			when 772 =>	animation_choice<=43;
			when 773 =>	animation_choice<=42;
			
			when 774 =>	animation_choice<=42;
			when 775 =>	animation_choice<=43;
			when 776 =>	animation_choice<=44;
			when 777 =>	animation_choice<=45;
		
			when 778 =>	animation_choice<=45;
			when 779 =>	animation_choice<=44;
			when 780 =>	animation_choice<=43;
			when 781 =>	animation_choice<=42;
			
			when 782 =>	animation_choice<=42;
			when 783 =>	animation_choice<=43;
			when 784 =>	animation_choice<=44;
			when 785 =>	animation_choice<=45;

			when 786 =>	animation_choice<=45;
			when 787 =>	animation_choice<=44;
			when 788 =>	animation_choice<=43;
			when 789 =>	animation_choice<=42;
	
			when 790 =>	animation_choice<=42;
			when 791 =>	animation_choice<=43;
			when 792 =>	animation_choice<=44;
			when 793 =>	animation_choice<=45;
		
			when 794 =>	animation_choice<=45;
			when 795 =>	animation_choice<=44;
			when 796 =>	animation_choice<=43;
			when 797 =>	animation_choice<=42;
			--FIN POR HACER
			when 798 =>	animation_choice<=1;
			when 799 =>	animation_choice<=0;
			when 800 =>	animation_choice<=1;
			when 801 =>	animation_choice<=0;
			when 802 =>	animation_choice<=1;
			when 803 =>	animation_choice<=0;
			when 804 =>	animation_choice<=1;
			when 805 => animation_choice<=0;
			when 806 =>	animation_choice<=1;
			when 807 =>	animation_choice<=0;
			when 808 =>	animation_choice<=1;
			when 809 =>	animation_choice<=0;
			when 810 => animation_choice<=1;
			when 811 =>	animation_choice<=0;
			when 812 =>	animation_choice<=1;
			when 813 =>	animation_choice<=0;
			when 814 =>	animation_choice<=1;
			when 815 => animation_choice<=0;
			when 816 =>	animation_choice<=1;
			when 817 =>	animation_choice<=0;
			when 818 =>	animation_choice<=1;
			when 819 =>	animation_choice<=0;
			when 820 => animation_choice<=1;
			when 821 =>	animation_choice<=0;
			when 822 =>	animation_choice<=1;
			when 823 =>	animation_choice<=0;
			when 824 =>	animation_choice<=1;
			when 825 => animation_choice<=0;
			when 826 =>	animation_choice<=1;
			when 827 =>	animation_choice<=0;
			when 828 =>	animation_choice<=1;
			when 829 =>	animation_choice<=0;
			when 830 => animation_choice<=1;
			when 831 =>	animation_choice<=0;
			when 832 =>	animation_choice<=1;
			when 833 =>	animation_choice<=0;
			when 834 =>	animation_choice<=1;
			when 835 => animation_choice<=0;
			when 836 =>	animation_choice<=1;
			when 837 =>	animation_choice<=0;
			when 838 =>	animation_choice<=1;
			when 839 =>	animation_choice<=0;
			when 840 => animation_choice<=1;
			when 841 => animation_choice<=0;
			when 842 =>	animation_choice<=1;
			when 843 =>	animation_choice<=0;
			when 844 =>	animation_choice<=1;
			
			when 845 =>	animation_choice<=0;
			
			when 846 =>	animation_choice<=2;
			when 847 =>	animation_choice<=3;
			when 848 =>	animation_choice<=4;
			when 849 =>	animation_choice<=5;
			when 850 =>	animation_choice<=6;
			when 851 =>	animation_choice<=7;
			when 852 =>	animation_choice<=8;
			when 853 =>	animation_choice<=9;
		
			when 854 =>	animation_choice<=0;
		
			when 855 =>	animation_choice<=10;
			when 856 =>	animation_choice<=11;
			when 857 =>	animation_choice<=12;
			when 858 =>	animation_choice<=13;
			when 859 =>	animation_choice<=14;
			when 860 =>	animation_choice<=15;
			when 861 =>	animation_choice<=16;
			when 862 =>	animation_choice<=17;
			
			when 863 =>	animation_choice<=0;
	
			when 864 =>	animation_choice<=9;
			when 865 =>	animation_choice<=8;
			when 866 =>	animation_choice<=7;
			when 867 =>	animation_choice<=6;
			when 868 =>	animation_choice<=5;
			when 869 =>	animation_choice<=4;
			when 870 =>	animation_choice<=3;
			when 871 =>	animation_choice<=2;
		
			when 872 =>	animation_choice<=0;
	
			when 873 =>	animation_choice<=17;
			when 874 =>	animation_choice<=16;
			when 875 =>	animation_choice<=15;
			when 876 =>	animation_choice<=14;
			when 877 =>	animation_choice<=13;
			when 878 =>	animation_choice<=12;
			when 879 =>	animation_choice<=11;
			when 880 =>	animation_choice<=10;
			
			when 881 =>	animation_choice<=0;
	
			when 882 =>	animation_choice<=18;
			when 883 =>	animation_choice<=19;
			when 884 =>	animation_choice<=20;
			when 885 =>	animation_choice<=21;
			
			when 886 =>	animation_choice<=18;
			when 887 =>	animation_choice<=19;
			when 888 =>	animation_choice<=20;
			when 889 =>	animation_choice<=21;
			
			when 890 =>	animation_choice<=18;
			when 891 =>	animation_choice<=19;
			when 892 =>	animation_choice<=20;
			when 893 =>	animation_choice<=21;
			
			when 894 =>	animation_choice<=18;
			when 895 =>	animation_choice<=19;
			when 896 =>	animation_choice<=20;
			when 897 =>	animation_choice<=21;
			
			when 898 =>	animation_choice<=18;
			when 899 =>	animation_choice<=19;
			when 900 =>	animation_choice<=20;
			when 901 =>	animation_choice<=21;
			
			when 902 =>	animation_choice<=18;
			when 903 =>	animation_choice<=19;
			when 904 =>	animation_choice<=20;
			when 905 =>	animation_choice<=21;
			
			when 906 =>	animation_choice<=18;
			when 907 =>	animation_choice<=19;
			when 908 =>	animation_choice<=20;
			when 909 =>	animation_choice<=21;
			
			when 910 =>	animation_choice<=18;
			when 911 =>	animation_choice<=19;
			when 912 =>	animation_choice<=20;
			when 913 =>	animation_choice<=21;
			
			when 914 =>	animation_choice<=18;
			when 915 =>	animation_choice<=19;
			when 916 =>	animation_choice<=20;
			when 917 =>	animation_choice<=21;
			
			when 918 =>	animation_choice<=18;
			when 919 =>	animation_choice<=19;
			when 920 =>	animation_choice<=20;
			when 921 =>	animation_choice<=21;
			
			when 922 =>	animation_choice<=18;
			when 923 =>	animation_choice<=19;
			when 924 =>	animation_choice<=20;
			when 925 =>	animation_choice<=21;
			
			when 926 =>	animation_choice<=18;
			when 927 =>	animation_choice<=19;
			when 928 =>	animation_choice<=20;
			when 929 =>	animation_choice<=21;
			
			when 930 =>	animation_choice<=18;
			when 931 =>	animation_choice<=19;
			when 932 =>	animation_choice<=20;
			when 933 =>	animation_choice<=21;
			
			when 934 =>	animation_choice<=2;
			when 935 =>	animation_choice<=3;
			when 936 =>	animation_choice<=4;
			when 937 =>	animation_choice<=5;
			when 938 =>	animation_choice<=6;
			when 939 =>	animation_choice<=7;
			when 940 =>	animation_choice<=8;
			when 941 =>	animation_choice<=9;
		
			when 942 =>	animation_choice<=0;
		
			when 943 =>	animation_choice<=10;
			when 944 =>	animation_choice<=11;
			when 945 =>	animation_choice<=12;
			when 946 =>	animation_choice<=13;
			when 947 =>	animation_choice<=14;
			when 948 =>	animation_choice<=15;
			when 949 =>	animation_choice<=16;
			when 950 =>	animation_choice<=17;
			
			when 951 =>	animation_choice<=0;
			
			when 952 =>	animation_choice<=9;
			when 953 =>	animation_choice<=8;
			when 954 =>	animation_choice<=7;
			when 955 =>	animation_choice<=6;
			when 956 =>	animation_choice<=5;
			when 957 =>	animation_choice<=4;
			when 958 =>	animation_choice<=3;
			when 959 =>	animation_choice<=2;
		
			when 960 =>	animation_choice<=0;

			when 961 =>	animation_choice<=17;
			when 962 =>	animation_choice<=16;
			when 963 =>	animation_choice<=15;
			when 964 =>	animation_choice<=14;
			when 965 =>	animation_choice<=13;
			when 966 =>	animation_choice<=12;
			when 967 =>	animation_choice<=11;
			when 968 =>	animation_choice<=10;
			
			when 969 =>	animation_choice<=18;
			when 970 =>	animation_choice<=19;
			when 971 =>	animation_choice<=20;
			when 972 =>	animation_choice<=21;
			
			when 973 =>	animation_choice<=18;
			when 974 =>	animation_choice<=19;
			when 975 =>	animation_choice<=20;
			when 976 =>	animation_choice<=21;
			
			when 977 =>	animation_choice<=18;
			when 978 =>	animation_choice<=19;
			when 979 =>	animation_choice<=20;
			when 980 =>	animation_choice<=21;
			
			when 981 =>	animation_choice<=18;
			when 982 =>	animation_choice<=19;
			when 983 =>	animation_choice<=20;
			when 984 =>	animation_choice<=21;
			
			when 985 =>	animation_choice<=18;
			when 986 =>	animation_choice<=19;
			when 987 =>	animation_choice<=20;
			when 988 =>	animation_choice<=21;
			
			when 989 =>	animation_choice<=18;
			when 990 =>	animation_choice<=19;
			when 991 =>	animation_choice<=20;
			when 992 =>	animation_choice<=21;
			
			when 993 =>	animation_choice<=18;
			when 994 =>	animation_choice<=19;
			when 995 =>	animation_choice<=20;
			when 996 =>	animation_choice<=21;
			
			when 997 =>	animation_choice<=18;
			when 998 =>	animation_choice<=19;
			when 999 =>	animation_choice<=20;
			when 1000 =>	animation_choice<=21;
			
			when 1001 =>	animation_choice<=18;
			when 1002 =>	animation_choice<=19;
			when 1003 =>	animation_choice<=20;
			when 1004 =>	animation_choice<=21;
			
			when 1005 =>	animation_choice<=18;
			when 1006 =>	animation_choice<=19;
			when 1007 =>	animation_choice<=20;
			when 1008 =>	animation_choice<=21;
			
			when 1009 =>	animation_choice<=18;
			when 1010 =>	animation_choice<=19;
			when 1011 =>	animation_choice<=20;
			when 1012 =>	animation_choice<=21;
			
			when 1013 =>	animation_choice<=18;
			when 1014 =>	animation_choice<=19;
			when 1015 =>	animation_choice<=20;
			when 1016 =>	animation_choice<=21;
			
			when 1017 =>	animation_choice<=2;
			when 1018 =>	animation_choice<=3;
			when 1019 =>	animation_choice<=4;
			when 1020 =>	animation_choice<=5;
			when 1021 =>	animation_choice<=6;
			when 1022 =>	animation_choice<=7;
			when 1023 =>	animation_choice<=8;
			when 1024 =>	animation_choice<=9;
		
			when 1025 =>	animation_choice<=0;
		
			when 1026 =>	animation_choice<=10;
			when 1027 =>	animation_choice<=11;
			when 1028 =>	animation_choice<=12;
			when 1029 =>	animation_choice<=13;
			when 1030 =>	animation_choice<=14;
			when 1031 =>	animation_choice<=15;
			when 1032 =>	animation_choice<=16;
			when 1033 =>	animation_choice<=17;
			
			when 1034 =>	animation_choice<=0;
			
			when 1035 =>	animation_choice<=9;
			when 1036 =>	animation_choice<=8;
			when 1037 =>	animation_choice<=7;
			when 1038 =>	animation_choice<=6;
			when 1039 =>	animation_choice<=5;
			when 1040 =>	animation_choice<=4;
			when 1041 =>	animation_choice<=3;
			when 1042 =>	animation_choice<=2;
		
			when 1043 =>	animation_choice<=0;
			
			when 1044 =>	animation_choice<=17;
			when 1045 =>	animation_choice<=16;
			when 1046 =>	animation_choice<=15;
			when 1047 =>	animation_choice<=14;
			when 1048 =>	animation_choice<=13;
			when 1049 =>	animation_choice<=12;
			when 1050 =>	animation_choice<=11;
			when 1051 =>	animation_choice<=10;
		
			when 1052 =>	animation_choice<=0;
			
			when 1053 =>	animation_choice<=22;
			when 1054 =>	animation_choice<=23;
			when 1055 =>	animation_choice<=24;
			when 1056 =>	animation_choice<=25;
			when 1057 =>	animation_choice<=26;
			when 1058 =>	animation_choice<=27;
			when 1059 =>	animation_choice<=28;
			when 1060 =>	animation_choice<=29;
			
			when 1061 =>	animation_choice<=22;
			when 1062 =>	animation_choice<=23;
			when 1063 =>	animation_choice<=24;
			when 1064 =>	animation_choice<=25;
			when 1065 =>	animation_choice<=26;
			when 1066 =>	animation_choice<=27;
			when 1067 =>	animation_choice<=28;
			when 1068 =>	animation_choice<=29;
			-- GRAVITATION
			when 1069 to 1071 =>	animation_choice<=30;
			when 1072 to 1074 =>	animation_choice<=31;
			when 1075 to 1077 =>	animation_choice<=32;
			when 1078 to 1080 =>	animation_choice<=33;
			when 1081 to 1083 =>	animation_choice<=34;
			when 1084 to 1086 =>	animation_choice<=35;
			when 1087 to 1089 =>	animation_choice<=36;
			when 1090 to 1092 =>	animation_choice<=37;
			when 1093 to 1095 =>	animation_choice<=38;
			when 1096 to 1098 =>	animation_choice<=39;
			when 1099 to 1101 =>	animation_choice<=40;
			when 1102 to 1104 =>	animation_choice<=41;
			
			when 1105 to 1107 =>	animation_choice<=41;
			when 1108 to 1110 =>	animation_choice<=40;
			when 1111 to 1112 =>	animation_choice<=39;
			when 1113 to 1115 =>	animation_choice<=38;
			when 1116 to 1118 =>	animation_choice<=37;
			when 1119 to 1121 =>	animation_choice<=36;
			when 1122 to 1124 =>	animation_choice<=35;
			when 1125 to 1127 =>	animation_choice<=34;
			when 1128 to 1130 =>	animation_choice<=33;
			when 1131 to 1133 =>	animation_choice<=32;
			when 1134 to 1136 =>	animation_choice<=31;
			when 1137 to 1139 =>	animation_choice<=30;
			
			when 1140 => animation_choice<=30;
			when 1141 to 1143 =>	animation_choice<=31;
			when 1144 to 1146 =>	animation_choice<=32;
			when 1147 to 1149 =>	animation_choice<=33;
			when 1150 to 1152 =>	animation_choice<=34;
			when 1153 to 1155 =>	animation_choice<=35;
			when 1156 to 1158 =>	animation_choice<=36;
			when 1159 to 1160 =>	animation_choice<=37;
			when 1161 to 1163 =>	animation_choice<=38;
			when 1164 to 1166 =>	animation_choice<=39;
			when 1167 to 1169 =>	animation_choice<=40;
			when 1170 to 1172 =>	animation_choice<=41;
			
			when 1173 to 1175 =>	animation_choice<=41;
			when 1176 to 1178 =>	animation_choice<=40;
			when 1179 to 1180 =>	animation_choice<=39;
			when 1181 to 1183 =>	animation_choice<=38;
			when 1184 to 1186 =>	animation_choice<=37;
			when 1187 to 1189 =>	animation_choice<=36;
			when 1190 to 1192 =>	animation_choice<=35;
			when 1193 to 1194 =>	animation_choice<=34;
			when 1195 to 1197 =>	animation_choice<=33;
			when 1198 to 1200 =>	animation_choice<=32;
			when 1201 to 1203 =>	animation_choice<=31;
			when 1204 to 1206 =>	animation_choice<=30;
			
			when 1207 =>	animation_choice<=18;
			when 1208 =>	animation_choice<=19;
			when 1209 =>	animation_choice<=20;
			when 1210 =>	animation_choice<=21;
			
			when 1211 =>	animation_choice<=18;
			when 1212 =>	animation_choice<=19;
			when 1213 =>	animation_choice<=20;
			when 1214 =>	animation_choice<=21;
			
			when 1215 =>	animation_choice<=18;
			when 1216 =>	animation_choice<=19;
			when 1217 =>	animation_choice<=20;
			when 1218 =>	animation_choice<=21;
			
			when 1219 =>	animation_choice<=18;
			when 1220 =>	animation_choice<=19;
			when 1221 =>	animation_choice<=20;
			when 1222 =>	animation_choice<=21;
			
			when 1223 =>	animation_choice<=18;
			when 1224 =>	animation_choice<=19;
			when 1225 =>	animation_choice<=20;
			when 1226 =>	animation_choice<=21;
			
			when 1227 =>	animation_choice<=18;
			when 1228 =>	animation_choice<=19;
			when 1229 =>	animation_choice<=20;
			when 1230 =>	animation_choice<=21;
			
			when 1231 =>	animation_choice<=18;
			when 1232 =>	animation_choice<=19;
			when 1233 =>	animation_choice<=20;
			when 1234 =>	animation_choice<=21;
			
			when 1235 =>	animation_choice<=18;
			when 1236 =>	animation_choice<=19;
			when 1237 =>	animation_choice<=20;
			when 1238 =>	animation_choice<=21;
			
			
			--
			when 1239 =>	animation_choice<=21;
			when 1240 =>	animation_choice<=20;
			when 1241 =>	animation_choice<=19;
			when 1242 =>	animation_choice<=18;
		
			
			when 1243 =>	animation_choice<=21;
			when 1244 =>	animation_choice<=20;
			when 1245 =>	animation_choice<=19;
			when 1246 =>	animation_choice<=18;
			
			when 1247 =>	animation_choice<=21;
			when 1248 =>	animation_choice<=20;
			when 1249 =>	animation_choice<=19;
			when 1250 =>	animation_choice<=18;
			
			when 1251 =>	animation_choice<=21;
			when 1252 =>	animation_choice<=20;
			when 1253 =>	animation_choice<=19;
			when 1254 =>	animation_choice<=18;
			
			when 1255 =>	animation_choice<=21;
			when 1256 =>	animation_choice<=20;
			when 1257 =>	animation_choice<=19;
			when 1258 =>	animation_choice<=18;
			
			when 1259 =>	animation_choice<=21;
			when 1260 =>	animation_choice<=20;
			when 1261 =>	animation_choice<=19;
			when 1262 =>	animation_choice<=18;
			
			when 1263 =>	animation_choice<=21;
			when 1264 =>	animation_choice<=20;
			when 1265 =>	animation_choice<=19;
			when 1266 =>	animation_choice<=18;
			
			when 1267 =>	animation_choice<=21;
			when 1268 =>	animation_choice<=20;
			when 1269 =>	animation_choice<=19;
			when 1270 =>	animation_choice<=18;
			--
			when 1271 =>	animation_choice<=18;
			when 1272 =>	animation_choice<=19;
			when 1273 =>	animation_choice<=20;
			when 1274 =>	animation_choice<=21;
			
			when 1275 =>	animation_choice<=18;
			when 1276 =>	animation_choice<=19;
			when 1277 =>	animation_choice<=20;
			when 1278 =>	animation_choice<=21;
			
			when 1279 =>	animation_choice<=18;
			when 1280 =>	animation_choice<=19;
			when 1281 =>	animation_choice<=20;
			when 1282 =>	animation_choice<=21;
			
			when 1283 =>	animation_choice<=18;
			when 1284 =>	animation_choice<=19;
			when 1285 =>	animation_choice<=20;
			when 1286 =>	animation_choice<=21;
			
			when 1287 =>	animation_choice<=93;
			when 1288 =>	animation_choice<=94;
			when 1289 =>	animation_choice<=95;
			when 1290 =>	animation_choice<=96;
		
			when 1291 =>	animation_choice<=97;
			when 1292 =>	animation_choice<=98;
			when 1293 =>	animation_choice<=99;
			when 1294 =>	animation_choice<=100;
	
			when 1295 =>	animation_choice<=101;
			when 1296 =>	animation_choice<=102;
			when 1297 =>	animation_choice<=103;
			when 1298 =>	animation_choice<=104;
			
			when 1299 =>	animation_choice<=105;
			when 1300 =>	animation_choice<=106;
			when 1301 =>	animation_choice<=107;
			when 1302 =>	animation_choice<=108;
			-- RECTANGULO 
			when 1303 =>	animation_choice<=42;
			when 1304 =>	animation_choice<=43;
			when 1305 =>	animation_choice<=44;
			when 1306 =>	animation_choice<=45;
	
			when 1307 =>	animation_choice<=45;
			when 1308 =>	animation_choice<=44;
			when 1309 =>	animation_choice<=43;
			when 1310 =>	animation_choice<=42;
			
			when 1311 =>	animation_choice<=42;
			when 1312 =>	animation_choice<=43;
			when 1313 =>	animation_choice<=44;
			when 1314 =>	animation_choice<=45;
		
			when 1315 =>	animation_choice<=45;
			when 1316 =>	animation_choice<=44;
			when 1317 =>	animation_choice<=43;
			when 1318 =>	animation_choice<=42;
			
			when 1319 =>	animation_choice<=42;
			when 1320 =>	animation_choice<=43;
			when 1321 =>	animation_choice<=44;
			when 1322 =>	animation_choice<=45;
		
			when 1323 =>	animation_choice<=45;
			when 1324 =>	animation_choice<=44;
			when 1325 =>	animation_choice<=43;
			when 1326 =>	animation_choice<=42;
			
			when 1327 =>	animation_choice<=42;
			when 1328 =>	animation_choice<=43;
			when 1329 =>	animation_choice<=44;
			when 1330 =>	animation_choice<=45;
		
			when 1331 =>	animation_choice<=45;
			when 1332 =>	animation_choice<=44;
			when 1333 =>	animation_choice<=43;
			when 1334 =>	animation_choice<=42;
			
			when 1335 =>	animation_choice<=42;
			when 1336 =>	animation_choice<=43;
			when 1337 =>	animation_choice<=44;
			when 1338 =>	animation_choice<=45;
		
			when 1339 =>	animation_choice<=45;
			when 1340 =>	animation_choice<=44;
			when 1341 =>	animation_choice<=43;
			when 1342 =>	animation_choice<=42;
			
			when 1343 =>	animation_choice<=42;
			when 1344 =>	animation_choice<=43;
			when 1345 =>	animation_choice<=44;
			when 1346 =>	animation_choice<=45;
		
			when 1347 =>	animation_choice<=45;
			when 1348 =>	animation_choice<=44;
			when 1349 =>	animation_choice<=43;
			when 1350 =>	animation_choice<=42;
			
			--POR HACER
			when 1351 =>	animation_choice<=18;
			when 1352 =>	animation_choice<=19;
			when 1353 =>	animation_choice<=20;
			when 1354 =>	animation_choice<=21;
		
			when 1355 =>	animation_choice<=18;
			when 1356 =>	animation_choice<=19;
			when 1357 =>	animation_choice<=20;
			when 1358 =>	animation_choice<=21;
			
			when 1359 =>	animation_choice<=18;
			when 1360 =>	animation_choice<=19;
			when 1361 =>	animation_choice<=20;
			when 1362 =>	animation_choice<=21;
		
			when 1363 =>	animation_choice<=18;
			when 1364 =>	animation_choice<=19;
			when 1365 =>	animation_choice<=20;
			when 1366 =>	animation_choice<=21;
			
			when 1367 =>	animation_choice<=18;
			when 1368 =>	animation_choice<=19;
			when 1369 =>	animation_choice<=20;
			when 1370 =>	animation_choice<=21;
			
			when 1371 =>	animation_choice<=18;
			when 1372 =>	animation_choice<=19;
			when 1373 =>	animation_choice<=20;
			when 1374 =>	animation_choice<=21;
		
			when 1375 =>	animation_choice<=18;
			when 1376 =>	animation_choice<=19;
			when 1377 =>	animation_choice<=20;
			when 1378 =>	animation_choice<=21;
		
			when 1379 =>	animation_choice<=18;
			when 1380 =>	animation_choice<=19;
			when 1381 =>	animation_choice<=20;
			when 1382 =>	animation_choice<=21;
			
			
			--
			when 1383 =>	animation_choice<=21;
			when 1384 =>	animation_choice<=20;
			when 1385 =>	animation_choice<=19;
			when 1386 =>	animation_choice<=18;
			
		
			when 1387 =>	animation_choice<=21;
			when 1388 =>	animation_choice<=20;
			when 1389 =>	animation_choice<=19;
			when 1390 =>	animation_choice<=18;
			
			when 1391 =>	animation_choice<=21;
			when 1392 =>	animation_choice<=20;
			when 1393 =>	animation_choice<=19;
			when 1394 =>	animation_choice<=18;
			
			when 1395 =>	animation_choice<=21;
			when 1396 =>	animation_choice<=20;
			when 1397 =>	animation_choice<=19;
			when 1398 =>	animation_choice<=18;
			
			when 1399 =>	animation_choice<=21;
			when 1400 =>	animation_choice<=20;
			when 1401 =>	animation_choice<=19;
			when 1402 =>	animation_choice<=18;
			
			when 1403 =>	animation_choice<=21;
			when 1404 =>	animation_choice<=20;
			when 1405 =>	animation_choice<=19;
			when 1406 =>	animation_choice<=18;
		
			when 1407 =>	animation_choice<=21;
			when 1408 =>	animation_choice<=20;
			when 1409 =>	animation_choice<=19;
			when 1410 =>	animation_choice<=18;
			
			when 1411 =>	animation_choice<=21;
			when 1412 =>	animation_choice<=20;
			when 1413 =>	animation_choice<=19;
			when 1414 =>	animation_choice<=18;
			--
			when 1415 =>	animation_choice<=18;
			when 1416 =>	animation_choice<=19;
			when 1417 =>	animation_choice<=20;
			when 1418 =>	animation_choice<=21;
			
			when 1419 =>	animation_choice<=18;
			when 1420 =>	animation_choice<=19;
			when 1421 =>	animation_choice<=20;
			when 1422 =>	animation_choice<=21;
			
			when 1423 =>	animation_choice<=18;
			when 1424 =>	animation_choice<=19;
			when 1425 =>	animation_choice<=20;
			when 1426 =>	animation_choice<=21;
			
			when 1427 =>	animation_choice<=18;
			when 1428 =>	animation_choice<=19;
			when 1429 =>	animation_choice<=20;
			when 1430 =>	animation_choice<=21;
		
			when 1431 =>	animation_choice<=93;
			when 1432 =>	animation_choice<=94;
			when 1433 =>	animation_choice<=95;
			when 1434 =>	animation_choice<=96;

			when 1435 =>	animation_choice<=97;
			when 1436 =>	animation_choice<=98;
			when 1437 =>	animation_choice<=99;
			when 1438 =>	animation_choice<=100;
		
			when 1439 =>	animation_choice<=101;
			when 1440 =>	animation_choice<=102;
			when 1441 =>	animation_choice<=103;
			when 1442 =>	animation_choice<=104;
			
			when 1443 =>	animation_choice<=105;
			when 1444 =>	animation_choice<=106;
			when 1445 =>	animation_choice<=107;
			when 1446 =>	animation_choice<=108;
			-- RECTANGULO 
			when 1447 =>	animation_choice<=42;
			when 1448 =>	animation_choice<=43;
			when 1449 =>	animation_choice<=44;
			when 1450 =>	animation_choice<=45;
		
			when 1451 =>	animation_choice<=45;
			when 1452 =>	animation_choice<=44;
			when 1453 =>	animation_choice<=43;
			when 1454 =>	animation_choice<=42;
			
			when 1455 =>	animation_choice<=42;
			when 1456 =>	animation_choice<=43;
			when 1457 =>	animation_choice<=44;
			when 1458 =>	animation_choice<=45;
		
			when 1459 =>	animation_choice<=45;
			when 1460 =>	animation_choice<=44;
			when 1461 =>	animation_choice<=43;
			when 1462 =>	animation_choice<=42;
			
			when 1463 =>	animation_choice<=42;
			when 1464 =>	animation_choice<=43;
			when 1465 =>	animation_choice<=44;
			when 1466 =>	animation_choice<=45;
		
			when 1467 =>	animation_choice<=45;
			when 1468 =>	animation_choice<=44;
			when 1469 =>	animation_choice<=43;
			when 1470 =>	animation_choice<=42;
			
			when 1471 =>	animation_choice<=42;
			when 1472 =>	animation_choice<=43;
			when 1473 =>	animation_choice<=44;
			when 1474 =>	animation_choice<=45;
		
			when 1475 =>	animation_choice<=45;
			when 1476 =>	animation_choice<=44;
			when 1477 =>	animation_choice<=43;
			when 1478 =>	animation_choice<=42;
			
			when 1479 =>	animation_choice<=42;
			when 1480 =>	animation_choice<=43;
			when 1481 =>	animation_choice<=44;
			when 1482 =>	animation_choice<=45;

			when 1483 =>	animation_choice<=45;
			when 1484 =>	animation_choice<=44;
			when 1485 =>	animation_choice<=43;
			when 1486 =>	animation_choice<=42;
	
			when 1487 =>	animation_choice<=42;
			when 1488 =>	animation_choice<=43;
			when 1489 =>	animation_choice<=44;
			when 1490 =>	animation_choice<=45;
		
			when 1491 =>	animation_choice<=45;
			when 1492 =>	animation_choice<=44;
			when 1493 =>	animation_choice<=43;
			when 1494 =>	animation_choice<=42;
			--FIN POR HACER
			
			when 1495 =>	animation_choice<=46;
			when 1496 =>	animation_choice<=47;
			when 1497 =>	animation_choice<=48;
			when 1498 =>	animation_choice<=49;
			when 1499 =>	animation_choice<=50;
			when 1500 =>	animation_choice<=51;
			when 1501 =>	animation_choice<=52;
			when 1502 =>	animation_choice<=53;
			when 1503 =>	animation_choice<=54;
			when 1504 =>	animation_choice<=55;
			when 1505 =>	animation_choice<=56;
			when 1506 =>	animation_choice<=57;
			when 1507 =>	animation_choice<=58;
			when 1508 =>	animation_choice<=59;
			when 1509 =>	animation_choice<=60;
			when 1510 =>	animation_choice<=61;
			when 1511 =>	animation_choice<=62;
			when 1512 =>	animation_choice<=63;
			when 1513 =>	animation_choice<=64;
			when 1514 =>	animation_choice<=65;
			when 1515 =>	animation_choice<=66;
			when 1516 =>	animation_choice<=67;
			when 1517 =>	animation_choice<=68;
			when 1518 =>	animation_choice<=69;
			when 1519 =>	animation_choice<=70;
			when 1520 =>	animation_choice<=71;
			when 1521 =>	animation_choice<=72;
			when 1522 =>	animation_choice<=73;
			
			when 1523 to 1528 => 	animation_choice<=74;
			
			when 1529 =>	animation_choice<=46;
			when 1530 =>	animation_choice<=47;
			when 1531 =>	animation_choice<=48;
			when 1532 =>	animation_choice<=49;
			when 1533 =>	animation_choice<=50;
			when 1534 =>	animation_choice<=51;
			when 1535 =>	animation_choice<=52;
			when 1536 =>	animation_choice<=53;
			when 1537 =>	animation_choice<=54;
			when 1538 =>	animation_choice<=55;
			when 1539 =>	animation_choice<=56;
			when 1540 =>	animation_choice<=57;
			when 1541 =>	animation_choice<=58;
			when 1542 =>	animation_choice<=59;
			when 1543 =>	animation_choice<=60;
			when 1544 =>	animation_choice<=61;
			when 1545 =>	animation_choice<=62;
			when 1546 =>	animation_choice<=63;
			when 1547 =>	animation_choice<=64;
			when 1548 =>	animation_choice<=65;
			when 1549 =>	animation_choice<=66;
			when 1550 =>	animation_choice<=67;
			when 1551 =>	animation_choice<=68;
			when 1552 =>	animation_choice<=69;
			when 1553 =>	animation_choice<=70;
			when 1554 =>	animation_choice<=71;
			when 1555 =>	animation_choice<=72;
			when 1556 =>	animation_choice<=73;
			when 1557 =>	animation_choice<=74;

			--ELEVATOR
			
			when 1563 =>	animation_choice<=2;
			when 1564 =>	animation_choice<=3;
			when 1565 =>	animation_choice<=4;
			when 1566 =>	animation_choice<=5;
			when 1567 =>	animation_choice<=6;
			when 1568 =>	animation_choice<=7;
			when 1569 =>	animation_choice<=8;
			when 1570 =>	animation_choice<=9;
			
			when 1571 =>	animation_choice<=0;

			when 1572 =>	animation_choice<=9;
			when 1573 =>	animation_choice<=8;
			when 1574 =>	animation_choice<=7;
			when 1575 =>	animation_choice<=6;
			when 1576 =>	animation_choice<=5;
			when 1577 =>	animation_choice<=4;
			when 1578 =>	animation_choice<=3;
			when 1579 =>	animation_choice<=2;
			
			when 1580 =>	animation_choice<=2;
			when 1581 =>	animation_choice<=3;
			when 1582 =>	animation_choice<=4;
			when 1583 =>	animation_choice<=5;
			when 1584 =>	animation_choice<=6;
			when 1585 =>	animation_choice<=7;
			when 1586 =>	animation_choice<=8;
			when 1587 =>	animation_choice<=9;
			
			when 1588 =>	animation_choice<=0;

			when 1589 =>	animation_choice<=9;
			when 1590 =>	animation_choice<=8;
			when 1591 =>	animation_choice<=7;
			when 1592 =>	animation_choice<=6;
			when 1593 =>	animation_choice<=5;
			when 1594 =>	animation_choice<=4;
			when 1595 =>	animation_choice<=3;
			when 1596 =>	animation_choice<=2;
		
			when 1597 =>	animation_choice<=2;
			when 1598 =>	animation_choice<=3;
			when 1599 =>	animation_choice<=4;
			when 1600 =>	animation_choice<=5;
			when 1601 =>	animation_choice<=5;
			when 1602 =>	animation_choice<=6;
			when 1603 =>	animation_choice<=7;
			when 1604 =>	animation_choice<=8;
			
			when 1605 =>	animation_choice<=9;
		
			when 1606 =>	animation_choice<=8;
			when 1607 =>	animation_choice<=7;
			when 1608 =>	animation_choice<=6;
			when 1609 =>	animation_choice<=5;
			when 1610 =>	animation_choice<=6;
			when 1611 =>	animation_choice<=7;
			when 1612 =>	animation_choice<=8;
			when 1613 =>	animation_choice<=7;
	
			when 1614 =>	animation_choice<=6;
			when 1615 =>	animation_choice<=5;
			when 1616 =>	animation_choice<=4;
			when 1617 =>	animation_choice<=3;
			when 1618 =>	animation_choice<=4;
			when 1619 =>	animation_choice<=5;
			when 1620 =>	animation_choice<=4;
			when 1621 =>	animation_choice<=3;
			
			when 1622 =>	animation_choice<=2;

			when 1623 =>	animation_choice<=3;
			when 1624 =>	animation_choice<=4;
			when 1625 =>	animation_choice<=5;
			when 1626 =>	animation_choice<=6;
			when 1627 =>	animation_choice<=7;
			when 1628 =>	animation_choice<=8;
			when 1629 =>	animation_choice<=7;
			when 1630 =>	animation_choice<=6;
			
			when 1631 =>	animation_choice<=7;
			when 1632 =>	animation_choice<=8;
			when 1633 =>	animation_choice<=9;
			when 1634 =>	animation_choice<=8;
			when 1635 =>	animation_choice<=7;
			when 1636 =>	animation_choice<=6;
			when 1637 =>	animation_choice<=5;
			when 1638 =>	animation_choice<=6;
			
			when 1639 =>	animation_choice<=5;
		
			when 1640 =>	animation_choice<=6;
			when 1641 =>	animation_choice<=5;
			when 1642 =>	animation_choice<=4;
			when 1643 =>	animation_choice<=3;
			when 1644 =>	animation_choice<=2;
			when 1645 =>	animation_choice<=1;
			when 1646 =>	animation_choice<=1;
			when 1647 =>	animation_choice<=1;
			
			
			--BLINK
			when 1648 =>	animation_choice<=1;
			when 1649 =>	animation_choice<=0;
			when 1650 =>	animation_choice<=1;
			when 1651 =>	animation_choice<=0;
			when 1652 =>	animation_choice<=1;
			when 1653 =>	animation_choice<=0;
			when 1654 =>	animation_choice<=1;
			when 1655 => animation_choice<=0;
			when 1656 =>	animation_choice<=1;
			when 1657 =>	animation_choice<=0;
			when 1658 =>	animation_choice<=1;
			when 1659 =>	animation_choice<=0;
			when 1660 => animation_choice<=1;
			when 1661 =>	animation_choice<=0;
			when 1662 =>	animation_choice<=1;
			when 1663 =>	animation_choice<=0;
			when 1664 =>	animation_choice<=1;
			when 1665 => animation_choice<=0;
			when 1666 =>	animation_choice<=1;
			when 1667 =>	animation_choice<=0;
			when 1668 =>	animation_choice<=1;
			when 1669 =>	animation_choice<=0;
			when 1670 => animation_choice<=1;
			when 1671 =>	animation_choice<=0;
			when 1672 =>	animation_choice<=1;
			when 1673 =>	animation_choice<=0;
			when 1674 =>	animation_choice<=1;
			when 1675 => animation_choice<=0;
			when 1676 =>	animation_choice<=1;
			when 1677 =>	animation_choice<=0;
			when 1678 =>	animation_choice<=1;
			when 1679 =>	animation_choice<=0;
			when 1680 => animation_choice<=1;
			when 1681 =>	animation_choice<=0;
			when 1682 =>	animation_choice<=1;
			when 1683 =>	animation_choice<=0;
			when 1684 =>	animation_choice<=1;
			when 1685 => animation_choice<=0;
			when 1686 =>	animation_choice<=1;
			when 1687 =>	animation_choice<=0;
			when 1688 =>	animation_choice<=1;
			when 1689 =>	animation_choice<=0;
			when 1690 => animation_choice<=1;
			when 1691 => animation_choice<=0;
			when 1692 =>	animation_choice<=1;
			when 1693 =>	animation_choice<=0;
			when 1694 =>	animation_choice<=1;
			
			-- FALTA POR HACER ESTA ULTIMA PARTE
			
			when 1695 =>animation_choice<=84;
			when 1696 =>animation_choice<=85;
			when 1697 =>animation_choice<=86;
			when 1698 =>animation_choice<=87;
			when 1699 =>animation_choice<=88;
			when 1700 =>animation_choice<=88;
			when 1701 =>animation_choice<=89;
			when 1702 =>animation_choice<=90;
			when 1703 =>animation_choice<=91;
			when 1704 =>animation_choice<=92;
			
			when 1705 =>animation_choice<=92;
			when 1706 =>animation_choice<=91;
			when 1707 =>animation_choice<=90;
			when 1708 =>animation_choice<=89;
			when 1709 =>animation_choice<=88;
			when 1710 =>animation_choice<=88;
			when 1711 =>animation_choice<=87;
			when 1712 =>animation_choice<=86;
			when 1713 =>animation_choice<=85;

			when 1714 =>animation_choice<=84;
			when 1715 =>animation_choice<=85;
			when 1716 =>animation_choice<=86;
			when 1717 =>animation_choice<=87;
			when 1718 =>animation_choice<=88;
			when 1719 =>animation_choice<=89;
			when 1720 =>animation_choice<=90;
			when 1721 =>animation_choice<=91;
			when 1722 =>animation_choice<=92;
			
			when 1723 =>animation_choice<=92;
			when 1724 =>animation_choice<=91;
			when 1725 =>animation_choice<=90;
			when 1726 =>animation_choice<=89;
			when 1727 =>animation_choice<=88;
			when 1728 =>animation_choice<=88;
			when 1729 =>animation_choice<=87;
			when 1730 =>animation_choice<=86;
			when 1731 =>animation_choice<=85;

			when 1732 =>animation_choice<=84;
			when 1733 =>animation_choice<=85;
			when 1734 =>animation_choice<=86;
			when 1735 =>animation_choice<=87;
			when 1736 =>animation_choice<=88;
			when 1737 =>animation_choice<=89;
			when 1738 =>animation_choice<=90;
			when 1739 =>animation_choice<=91;
			when 1740 =>animation_choice<=92;
			
			when 1741 =>animation_choice<=92;
			when 1742 =>animation_choice<=91;
			when 1743 =>animation_choice<=90;
			when 1744 =>animation_choice<=89;
			when 1745 =>animation_choice<=88;
			when 1746 =>animation_choice<=88;
			when 1747 =>animation_choice<=87;
			when 1748 =>animation_choice<=86;
			when 1749 =>animation_choice<=85;

			when 1750 =>animation_choice<=84;
			when 1751 =>animation_choice<=85;
			when 1752 =>animation_choice<=86;
			when 1753 =>animation_choice<=87;
			when 1754 =>animation_choice<=88;
			when 1755 =>animation_choice<=89;
			when 1756 =>animation_choice<=90;
			when 1757 =>animation_choice<=91;
			when 1758 =>animation_choice<=92;
		
			when 1759 =>animation_choice<=92;
			when 1760 =>animation_choice<=91;
			when 1761 =>animation_choice<=90;
			when 1762 =>animation_choice<=89;
			when 1763 =>animation_choice<=88;
			when 1764 =>animation_choice<=88;
			when 1765 =>animation_choice<=87;
			when 1766 =>animation_choice<=86;
			when 1767 =>animation_choice<=85;

			when 1768 =>animation_choice<=84;
			when 1769 =>animation_choice<=85;
			when 1770 =>animation_choice<=86;
			when 1771 =>animation_choice<=87;
			when 1772 =>animation_choice<=88;
			when 1773 =>animation_choice<=89;
			when 1774 =>animation_choice<=90;
			when 1775 =>animation_choice<=91;
			when 1776 =>animation_choice<=92;
			
			when 1777 =>animation_choice<=92;
			when 1778 =>animation_choice<=91;
			when 1779 =>animation_choice<=90;
			when 1780 =>animation_choice<=89;
			when 1781 =>animation_choice<=88;
			when 1782 =>animation_choice<=88;
			when 1783 =>animation_choice<=87;
			when 1784 =>animation_choice<=86;
			when 1785 =>animation_choice<=85;

			when 1786 =>animation_choice<=84;
			when 1787 =>animation_choice<=85;
			when 1788 =>animation_choice<=86;
			when 1789 =>animation_choice<=87;
			when 1790 =>animation_choice<=88;
			when 1791 =>animation_choice<=89;
			when 1792 =>animation_choice<=90;
			when 1793 =>animation_choice<=91;
			when 1794 =>animation_choice<=92;
			
			when 1795 =>animation_choice<=92;
			when 1796 =>animation_choice<=91;
			when 1797 =>animation_choice<=90;
			when 1798 =>animation_choice<=89;
			when 1799 =>animation_choice<=88;
			when 1800 =>animation_choice<=88;
			when 1801 =>animation_choice<=87;
			when 1802 =>animation_choice<=86;
			when 1803 =>animation_choice<=85;
			
			when 1804 =>animation_choice<=84;
			when 1805 =>animation_choice<=85;
			when 1806 =>animation_choice<=86;
			when 1807 =>animation_choice<=87;
			when 1808 =>animation_choice<=88;
			when 1809 =>animation_choice<=89;
			when 1810 =>animation_choice<=90;
			when 1811 =>animation_choice<=91;
			when 1812 =>animation_choice<=92;
			
			when 1813 =>animation_choice<=92;
			when 1814 =>animation_choice<=91;
			when 1815 =>animation_choice<=90;
			when 1816 =>animation_choice<=89;
			when 1817 =>animation_choice<=88;
			when 1818 =>animation_choice<=88;
			when 1819 =>animation_choice<=87;
			when 1820 =>animation_choice<=86;
			when 1821 =>animation_choice<=85;
		
			when 1822 =>animation_choice<=84;
			when 1823 =>animation_choice<=85;
			when 1824 =>animation_choice<=86;
			when 1825 =>animation_choice<=87;
			when 1826 =>animation_choice<=88;
			when 1827 =>animation_choice<=89;
			when 1828 =>animation_choice<=90;
			when 1829 =>animation_choice<=91;
			when 1830 =>animation_choice<=92;
			
			when 1831 =>animation_choice<=92;
			when 1832 =>animation_choice<=91;
			when 1833 =>animation_choice<=90;
			when 1834 =>animation_choice<=89;
			when 1835 =>animation_choice<=88;
			when 1836 =>animation_choice<=88;
			when 1837 =>animation_choice<=87;
			when 1838 =>animation_choice<=86;
			when 1839 =>animation_choice<=85;
			
			when 1840 =>animation_choice<=84;
			when 1841 =>animation_choice<=1;
			when 1842 =>animation_choice<=0;
			when 1843 =>animation_choice<=1;
			when 1844 =>animation_choice<=0;
			when 1845 =>animation_choice<=1;
			when 1846 =>animation_choice<=0;
			when 1847 =>animation_choice<=1;
			
			when 1848 =>animation_choice<=32;
			when 1849 =>animation_choice<=33;
			when 1850 =>animation_choice<=34;
			when 1851 =>animation_choice<=35;
			when 1852 =>animation_choice<=36;
			when 1853 =>animation_choice<=37;
			when 1854 =>animation_choice<=38;
			when 1855 =>animation_choice<=39;
			when 1856 =>animation_choice<=32;
			when 1857 =>animation_choice<=33;
			when 1858 =>animation_choice<=34;
			when 1859 =>animation_choice<=35;
			when 1860 =>animation_choice<=36;
			when 1861 =>animation_choice<=37;
			when 1862 =>animation_choice<=38;
			when 1863 =>animation_choice<=39;
			when 1864 =>animation_choice<=32;
			when 1865 =>animation_choice<=33;
			when 1866 =>animation_choice<=34;
			when 1867 =>animation_choice<=35;
			when 1868 =>animation_choice<=36;
			when 1869 =>animation_choice<=37;
			when 1870 =>animation_choice<=38;
			when 1871 =>animation_choice<=39;
			when 1872 =>animation_choice<=32;
			when 1873 =>animation_choice<=33;
			when 1874 =>animation_choice<=34;
			when 1875 =>animation_choice<=35;
			when 1876 =>animation_choice<=36;
			when 1877 =>animation_choice<=37;
			when 1878 =>animation_choice<=38;
			when 1879 =>animation_choice<=39;
			when 1880 =>animation_choice<=32;
			when 1881 =>animation_choice<=33;
			when 1882 =>animation_choice<=34;
			when 1883 =>animation_choice<=35;
			when 1884 =>animation_choice<=36;
			when 1885 =>animation_choice<=37;
			when 1886 =>animation_choice<=38;
			when 1887 =>animation_choice<=39;
			when 1888 =>animation_choice<=32;
			when 1889 =>animation_choice<=33;
			when 1890 =>animation_choice<=34;
			when 1891 =>animation_choice<=35;
			when 1892 =>animation_choice<=36;
			when 1893 =>animation_choice<=37;
			when 1894 =>animation_choice<=38;
			when 1895 =>animation_choice<=39;
			when 1896 =>animation_choice<=32;
			when 1897 =>animation_choice<=33;
			when 1898 =>animation_choice<=34;
			when 1899 =>animation_choice<=35;
			when 1900 =>animation_choice<=36;
			when 1901 =>animation_choice<=37;
			when 1902 =>animation_choice<=38;
			when 1903 =>animation_choice<=39;
			when 1904 =>animation_choice<=32;
			when 1905 =>animation_choice<=33;
			when 1906 =>animation_choice<=34;
			when 1907 =>animation_choice<=35;
			when 1908 =>animation_choice<=36;
			when 1909 =>animation_choice<=37;
			when 1910 =>animation_choice<=38;
			when 1911 =>animation_choice<=39;
			when 1912 =>animation_choice<=32;
			when 1913 =>animation_choice<=33;
			when 1914 =>animation_choice<=34;
			when 1916 =>animation_choice<=35;
			when 1917 =>animation_choice<=36;
			when 1918 =>animation_choice<=37;
			when 1919 =>animation_choice<=38;
			when 1920 =>animation_choice<=39;
			when 1921 =>animation_choice<=32;
			when 1922 =>animation_choice<=33;
			when 1923 =>animation_choice<=34;
			when 1924 =>animation_choice<=35;
			when 1926 =>animation_choice<=36;
			when 1927 =>animation_choice<=37;
			when 1928 =>animation_choice<=38;
			when 1929 =>animation_choice<=39;
			when 1930 =>animation_choice<=32;
			when 1931 =>animation_choice<=33;
			when 1932 =>animation_choice<=34;
			when 1933 =>animation_choice<=35;
			when 1934 =>animation_choice<=36;
			when 1936 =>animation_choice<=37;
			when 1937 =>animation_choice<=38;
			when 1938 =>animation_choice<=39;
			when 1939 =>animation_choice<=32;
			when 1940 =>animation_choice<=33;
			when 1941 =>animation_choice<=34;
			when 1942 =>animation_choice<=35;
			when 1943 =>animation_choice<=36;
			when 1944 =>animation_choice<=37;
			when 1946 =>animation_choice<=38;
			when 1947 =>animation_choice<=39;
			when 1948 =>animation_choice<=32;
			when 1949 =>animation_choice<=33;
			when 1950 =>animation_choice<=34;
			when 1951 =>animation_choice<=35;
			when 1952 =>animation_choice<=36;
			when 1953 =>animation_choice<=37;
			when 1954 =>animation_choice<=38;
			when 1956 =>animation_choice<=39;
			when 1957 =>animation_choice<=1;
			when 1958 =>animation_choice<=0;
			when 1959 =>animation_choice<=1;
			when 1960 =>animation_choice<=0;
			
			when 1961 =>animation_choice<=1;
			when 1962 =>animation_choice<=0;
			when 1963 =>animation_choice<=1;
			when 1964 =>animation_choice<=0;
			when 1966 =>animation_choice<=1;
			when 1967 =>animation_choice<=0;
			when 1968 =>animation_choice<=1;
			when 1969 =>animation_choice<=0;
			--- FIN DE LA ÜLTIMA PARTE
			
		
			-- CORO
			when 1970 =>	animation_choice<=20;
			when 1971 =>	animation_choice<=21;
		
			when 1972 =>	animation_choice<=18;
			when 1973 =>	animation_choice<=19;
			when 1974 =>	animation_choice<=20;
			when 1975 =>	animation_choice<=21;
		
			when 1976 =>	animation_choice<=18;
			when 1977 =>	animation_choice<=19;
			when 1978 =>	animation_choice<=20;
			when 1979 =>	animation_choice<=21;
			
			when 1980 =>	animation_choice<=18;
			when 1981 =>	animation_choice<=19;
			when 1982 =>	animation_choice<=20;
			when 1983 =>	animation_choice<=21;
		
			when 1984 =>	animation_choice<=18;
			when 1985 =>	animation_choice<=19;
			when 1986 =>	animation_choice<=20;
			when 1987 =>	animation_choice<=21;
			
			
			--
			when 1988 =>	animation_choice<=21;
			when 1989 =>	animation_choice<=20;
			when 1990 =>	animation_choice<=19;
			when 1991 =>	animation_choice<=18;
		
			
			when 1992 =>	animation_choice<=21;
			when 1993 =>	animation_choice<=20;
			when 1994 =>	animation_choice<=19;
			when 1995 =>	animation_choice<=18;
		
			when 1996 =>	animation_choice<=21;
			when 1997 =>	animation_choice<=20;
			when 1998 =>	animation_choice<=19;
			when 1999 =>	animation_choice<=18;
			
			when 2000 =>	animation_choice<=21;
			when 2001	=>	animation_choice<=20;
			when 2002 =>	animation_choice<=19;
			when 2003 =>	animation_choice<=18;
			
			when 2004 =>	animation_choice<=21;
			when 2005 =>	animation_choice<=20;
			when 2006 =>	animation_choice<=19;
			when 2007 =>	animation_choice<=18;
			
			when 2008 =>	animation_choice<=21;
			when 2009 =>	animation_choice<=20;
			when 2010 =>	animation_choice<=19;
			when 2011 =>	animation_choice<=18;
		
			when 2012 =>	animation_choice<=21;
			when 2013 =>	animation_choice<=20;
			when 2014 =>	animation_choice<=19;
			when 2015 =>	animation_choice<=18;
		
			when 2016 =>	animation_choice<=21;
			when 2017 =>	animation_choice<=20;
			when 2018 =>	animation_choice<=19;
			when 2019 =>	animation_choice<=18;
			--
			when 2020 =>	animation_choice<=18;
			when 2021 =>	animation_choice<=19;
			when 2022 =>	animation_choice<=20;
			when 2023 =>	animation_choice<=21;
		
			when 2024 =>	animation_choice<=18;
			when 2025 =>	animation_choice<=19;
			when 2026 =>	animation_choice<=20;
			when 2027 =>	animation_choice<=21;

			when 2028 =>	animation_choice<=18;
			when 2029 =>	animation_choice<=19;
			when 2030 =>	animation_choice<=20;
			when 2031 =>	animation_choice<=21;
	
			when 2032 =>	animation_choice<=18;
			when 2033 =>	animation_choice<=19;
			when 2034 =>	animation_choice<=20;
			when 2035 =>	animation_choice<=21;
		
			when 2036 =>	animation_choice<=93;
			when 2037 =>	animation_choice<=94;
			when 2038 =>	animation_choice<=95;
			when 2039 =>	animation_choice<=96;
		
			when 2040 =>	animation_choice<=97;
			when 2041 =>	animation_choice<=98;
			when 2042 =>	animation_choice<=99;
			when 2043 =>	animation_choice<=100;
			
			when 2044 =>	animation_choice<=101;
			when 2045 =>	animation_choice<=102;
			when 2046 =>	animation_choice<=103;
			when 2047 =>	animation_choice<=104;
	
			when 2048 =>	animation_choice<=105;
			when 2049 =>	animation_choice<=106;
			when 2050 =>	animation_choice<=107;
			when 2051 =>	animation_choice<=108;
			-- RECTANGULO 
			when 2052 =>	animation_choice<=42;
			when 2053 =>	animation_choice<=43;
			when 2054 =>	animation_choice<=44;
			when 2055 =>	animation_choice<=45;
	
			when 2056 =>	animation_choice<=45;
			when 2057 =>	animation_choice<=44;
			when 2058 =>	animation_choice<=43;
			when 2059 =>	animation_choice<=42;
			
			when 2060 =>	animation_choice<=42;
			when 2061 =>	animation_choice<=43;
			when 2062 =>	animation_choice<=44;
			when 2063 =>	animation_choice<=45;
	
			when 2064 =>	animation_choice<=45;
			when 2065 =>	animation_choice<=44;
			when 2066 =>	animation_choice<=43;
			when 2067 =>	animation_choice<=42;
			
			when 2068 =>	animation_choice<=42;
			when 2069 =>	animation_choice<=43;
			when 2070 =>	animation_choice<=44;
			when 2071 =>	animation_choice<=45;
		
			when 2072 =>	animation_choice<=45;
			when 2073 =>	animation_choice<=44;
			when 2074 =>	animation_choice<=43;
			when 2075 =>	animation_choice<=42;
		
			when 2076 =>	animation_choice<=42;
			when 2077 =>	animation_choice<=43;
			when 2078 =>	animation_choice<=44;
			when 2079 =>	animation_choice<=45;
		
			when 2080 =>	animation_choice<=45;
			when 2081 =>	animation_choice<=44;
			when 2082 =>	animation_choice<=43;
			when 2083 =>	animation_choice<=42;
			
			when 2084 =>	animation_choice<=42;
			when 2085 =>	animation_choice<=43;
			when 2086 =>	animation_choice<=44;
			when 2087 =>	animation_choice<=45;
	
			when 2088 =>	animation_choice<=45;
			when 2089 =>	animation_choice<=44;
			when 2090 =>	animation_choice<=43;
			when 2091 =>	animation_choice<=42;
		
			when 2092 =>	animation_choice<=42;
			when 2093 =>	animation_choice<=43;
			when 2094 =>	animation_choice<=44;
			when 2095 =>	animation_choice<=45;
		
			when 2096 =>	animation_choice<=45;
			when 2097 =>	animation_choice<=44;
			when 2098 =>	animation_choice<=43;
			when 2099 =>	animation_choice<=42;
			
			--POR HACER
			when 2100 =>	animation_choice<=18;
			when 2101 =>	animation_choice<=19;
			when 2102 =>	animation_choice<=20;
			when 2103 =>	animation_choice<=21;
	
			when 2104 =>	animation_choice<=18;
			when 2105 =>	animation_choice<=19;
			when 2106 =>	animation_choice<=20;
			when 2107 =>	animation_choice<=21;
			
			when 2108 =>	animation_choice<=18;
			when 2109 =>	animation_choice<=19;
			when 2110 =>	animation_choice<=20;
			when 2111 =>	animation_choice<=21;
		
			when 2112 =>	animation_choice<=18;
			when 2113 =>	animation_choice<=19;
			when 2114 =>	animation_choice<=20;
			when 2115 =>	animation_choice<=21;
			
			when 2116 =>	animation_choice<=18;
			when 2117 =>	animation_choice<=19;
			when 2118 =>	animation_choice<=20;
			when 2119 =>	animation_choice<=21;
			
			when 2120 =>	animation_choice<=18;
			when 2121 =>	animation_choice<=19;
			when 2122 =>	animation_choice<=20;
			when 2123 =>	animation_choice<=21;
	
			when 2124 =>	animation_choice<=18;
			when 2125 =>	animation_choice<=19;
			when 2126 =>	animation_choice<=20;
			when 2127 =>	animation_choice<=21;
		
			when 2128 =>	animation_choice<=18;
			when 2129 =>	animation_choice<=19;
			when 2130 =>	animation_choice<=20;
			when 2131 =>	animation_choice<=21;
			
			
			--
			when 2132 =>	animation_choice<=21;
			when 2133 =>	animation_choice<=20;
			when 2134 =>	animation_choice<=19;
			when 2135 =>	animation_choice<=18;
			
		
			when 2136 =>	animation_choice<=21;
			when 2137 =>	animation_choice<=20;
			when 2138 =>	animation_choice<=19;
			when 2139 =>	animation_choice<=18;
			
			when 2140 =>	animation_choice<=21;
			when 2141 =>	animation_choice<=20;
			when 2142 =>	animation_choice<=19;
			when 2143 =>	animation_choice<=18;
			
			when 2144 =>	animation_choice<=21;
			when 2145 =>	animation_choice<=20;
			when 2146 =>	animation_choice<=19;
			when 2147 =>	animation_choice<=18;
		
			when 2148 =>	animation_choice<=21;
			when 2149 =>	animation_choice<=20;
			when 2150 =>	animation_choice<=19;
			when 2151 =>	animation_choice<=18;
		
			when 2152 =>	animation_choice<=21;
			when 2153 =>	animation_choice<=20;
			when 2154 =>	animation_choice<=19;
			when 2155 =>	animation_choice<=18;
	
			when 2156 =>	animation_choice<=21;
			when 2157 =>	animation_choice<=20;
			when 2158 =>	animation_choice<=19;
			when 2159 =>	animation_choice<=18;
			
			when 2160 =>	animation_choice<=21;
			when 2161 =>	animation_choice<=20;
			when 2162 =>	animation_choice<=19;
			when 2163 =>	animation_choice<=18;
			--
			when 2164 =>	animation_choice<=18;
			when 2165 =>	animation_choice<=19;
			when 2166 =>	animation_choice<=20;
			when 2167 =>	animation_choice<=21;
			
			when 2168 =>	animation_choice<=18;
			when 2169 =>	animation_choice<=19;
			when 2170 =>	animation_choice<=20;
			when 2171 =>	animation_choice<=21;
		
			when 2172 =>	animation_choice<=18;
			when 2173 =>	animation_choice<=19;
			when 2174 =>	animation_choice<=20;
			when 2175 =>	animation_choice<=21;
		
			when 2176 =>	animation_choice<=18;
			when 2177 =>	animation_choice<=19;
			when 2178 =>	animation_choice<=20;
			when 2179 =>	animation_choice<=21;
	
			when 2180 =>	animation_choice<=93;
			when 2181 =>	animation_choice<=94;
			when 2182 =>	animation_choice<=95;
			when 2183 =>	animation_choice<=96;

			when 2184 =>	animation_choice<=97;
			when 2185 =>	animation_choice<=98;
			when 2186 =>	animation_choice<=99;
			when 2187 =>	animation_choice<=100;
		
			when 2188 =>	animation_choice<=101;
			when 2189 =>	animation_choice<=102;
			when 2190 =>	animation_choice<=103;
			when 2191 =>	animation_choice<=104;
		
			when 2192 =>	animation_choice<=105;
			when 2193 =>	animation_choice<=106;
			when 2194 =>	animation_choice<=107;
			when 2195 =>	animation_choice<=108;
			-- RECTANGULO 
			when 2196 =>	animation_choice<=42;
			when 2197 =>	animation_choice<=43;
			when 2198 =>	animation_choice<=44;
			when 2199 =>	animation_choice<=45;
		
			when 2200 =>	animation_choice<=45;
			when 2201 =>	animation_choice<=44;
			when 2202 =>	animation_choice<=43;
			when 2203 =>	animation_choice<=42;
		
			when 2204 =>	animation_choice<=42;
			when 2205 =>	animation_choice<=43;
			when 2206 =>	animation_choice<=44;
			when 2207 =>	animation_choice<=45;
	
			when 2208 =>	animation_choice<=45;
			when 2209 =>	animation_choice<=44;
			when 2210 =>	animation_choice<=43;
			when 2211 =>	animation_choice<=42;
			
			when 2212 =>	animation_choice<=42;
			when 2213 =>	animation_choice<=43;
			when 2214 =>	animation_choice<=44;
			when 2215 =>	animation_choice<=45;
	
			when 2216 =>	animation_choice<=45;
			when 2217 =>	animation_choice<=44;
			when 2218 =>	animation_choice<=43;
			when 2219 =>	animation_choice<=42;
			
			when 2220 =>	animation_choice<=42;
			when 2221 =>	animation_choice<=43;
			when 2222 =>	animation_choice<=44;
			when 2223 =>	animation_choice<=45;
	
			when 2224 =>	animation_choice<=45;
			when 2225 =>	animation_choice<=44;
			when 2226 =>	animation_choice<=43;
			when 2227 =>	animation_choice<=42;
		
			when 2228 =>	animation_choice<=42;
			when 2229 =>	animation_choice<=43;
			when 2230 =>	animation_choice<=44;
			when 2231 =>	animation_choice<=45;

			when 2232 =>	animation_choice<=45;
			when 2233 =>	animation_choice<=44;
			when 2234 =>	animation_choice<=43;
			when 2235 =>	animation_choice<=42;
			
			when 2236 =>	animation_choice<=42;
			when 2237 =>	animation_choice<=43;
			when 2238 =>	animation_choice<=44;
			when 2239 =>	animation_choice<=45;
	
			when 2240 =>	animation_choice<=45;
			when 2241 =>	animation_choice<=44;
			when 2242 =>	animation_choice<=43;
			when 2243 =>	animation_choice<=42;
			--FIN POR HACER
			
			
			when 2244 to 2246=>	animation_choice<=1;
			when 2247 to 2248 =>	animation_choice<=0;
			
			
			when 2249 to 2251 =>	animation_choice<=1;
			when 2252 to 2254 =>	animation_choice<=0;
			
			
			when 2255 to 2257 =>	animation_choice<=1;
			when 2258 to 2260 =>	animation_choice<=0;
			
			when 2261 to 2263 =>	animation_choice<=1;
			when 2264 to 2267 =>	animation_choice<=0;
			
			when 2268 to 2270 =>	animation_choice<=1;
			
			--POR HACER
			--when 2270 =>	animation_choice<=18;
			when 2271 =>	animation_choice<=19;
			when 2272 =>	animation_choice<=20;
			when 2273 =>	animation_choice<=21;
		
			when 2274 =>	animation_choice<=18;
			when 2275 =>	animation_choice<=19;
			when 2276 =>	animation_choice<=20;
			when 2277 =>	animation_choice<=21;
			
			when 2278 =>	animation_choice<=18;
			when 2279 =>	animation_choice<=19;
			when 2280 =>	animation_choice<=20;
			when 2281 =>	animation_choice<=21;

			when 2282 =>	animation_choice<=18;
			when 2283 =>	animation_choice<=19;
			when 2284 =>	animation_choice<=20;
			when 2285 =>	animation_choice<=21;
		
			when 2286 =>	animation_choice<=18;
			when 2287 =>	animation_choice<=19;
			when 2288 =>	animation_choice<=20;
			when 2289 =>	animation_choice<=21;
	
			
			--
			when 2290 =>	animation_choice<=21;
			when 2291 =>	animation_choice<=20;
			when 2292 =>	animation_choice<=19;
			when 2293 =>	animation_choice<=18;
		
		
			when 2294 =>	animation_choice<=21;
			when 2295 =>	animation_choice<=20;
			when 2296 =>	animation_choice<=19;
			when 2297 =>	animation_choice<=18;
			
			when 2298 =>	animation_choice<=21;
			when 2299 =>	animation_choice<=20;
			when 2300 =>	animation_choice<=19;
			when 2301 =>	animation_choice<=18;
			
			when 2302 =>	animation_choice<=21;
			when 2303 =>	animation_choice<=20;
			when 2304 =>	animation_choice<=19;
			when 2305 =>	animation_choice<=18;
		
			when 2306 =>	animation_choice<=21;
			when 2307 =>	animation_choice<=20;
			when 2308 =>	animation_choice<=19;
			when 2309 =>	animation_choice<=18;
		
			when 2310 =>	animation_choice<=21;
			when 2311 =>	animation_choice<=20;
			when 2312 =>	animation_choice<=19;
			when 2313 =>	animation_choice<=18;

			when 2314 =>	animation_choice<=21;
			when 2315 =>	animation_choice<=20;
			when 2316 =>	animation_choice<=19;
			when 2317 =>	animation_choice<=18;
			
			when 2318 =>	animation_choice<=21;
			when 2319 =>	animation_choice<=20;
			when 2320 =>	animation_choice<=19;
			when 2321 =>	animation_choice<=18;
			--
			when 2322 =>	animation_choice<=18;
			when 2323 =>	animation_choice<=19;
			when 2324 =>	animation_choice<=20;
			when 2325 =>	animation_choice<=21;
			
			when 2326 =>	animation_choice<=18;
			when 2327 =>	animation_choice<=19;
			when 2328 =>	animation_choice<=20;
			when 2329 =>	animation_choice<=21;
	
			when 2330 =>	animation_choice<=18;
			when 2331 =>	animation_choice<=19;
			when 2332 =>	animation_choice<=20;
			when 2333 =>	animation_choice<=21;
		
			when 2334 =>	animation_choice<=18;
			when 2335 =>	animation_choice<=19;
			when 2336 =>	animation_choice<=20;
			when 2337 =>	animation_choice<=21;
	
			when 2338 =>	animation_choice<=93;
			when 2339 =>	animation_choice<=94;
			when 2340 =>	animation_choice<=95;
			when 2341 =>	animation_choice<=96;

			when 2342 =>	animation_choice<=97;
			when 2343 =>	animation_choice<=98;
			when 2344 =>	animation_choice<=99;
			when 2345 =>	animation_choice<=100;
	
			when 2346 =>	animation_choice<=101;
			when 2347 =>	animation_choice<=102;
			when 2348 =>	animation_choice<=103;
			when 2349 =>	animation_choice<=104;
		
			when 2350 =>	animation_choice<=105;
			when 2351 =>	animation_choice<=106;
			when 2352 =>	animation_choice<=107;
			when 2353 =>	animation_choice<=108;
			-- RECTANGULO 
			when 2354 =>	animation_choice<=42;
			when 2355 =>	animation_choice<=43;
			when 2356 =>	animation_choice<=44;
			when 2357 =>	animation_choice<=45;
	
			when 2358 =>	animation_choice<=45;
			when 2359 =>	animation_choice<=44;
			when 2360 =>	animation_choice<=43;
			when 2361 =>	animation_choice<=42;
	
			when 2362 =>	animation_choice<=42;
			when 2363 =>	animation_choice<=43;
			when 2364 =>	animation_choice<=44;
			when 2365 =>	animation_choice<=45;

			when 2366 =>	animation_choice<=45;
			when 2367 =>	animation_choice<=44;
			when 2368 =>	animation_choice<=43;
			when 2369 =>	animation_choice<=42;
		
			when 2370 =>	animation_choice<=42;
			when 2371 =>	animation_choice<=43;
			when 2372 =>	animation_choice<=44;
			when 2373 =>	animation_choice<=45;
	
			when 2374 =>	animation_choice<=45;
			when 2375 =>	animation_choice<=44;
			when 2376 =>	animation_choice<=43;
			when 2377 =>	animation_choice<=42;
			
			when 2378 =>	animation_choice<=42;
			when 2379 =>	animation_choice<=43;
			when 2380 =>	animation_choice<=44;
			when 2381 =>	animation_choice<=45;

			when 2382 =>	animation_choice<=45;
			when 2383 =>	animation_choice<=44;
			when 2384 =>	animation_choice<=43;
			when 2385 =>	animation_choice<=42;
			
			when 2386 =>	animation_choice<=42;
			when 2387 =>	animation_choice<=43;
			when 2388 =>	animation_choice<=44;
			when 2389 =>	animation_choice<=45;
			
			when 2390 =>	animation_choice<=45;
			when 2391 =>	animation_choice<=44;
			when 2392 =>	animation_choice<=43;
			when 2393 =>	animation_choice<=42;
		
			when 2394 =>	animation_choice<=42;
			when 2395 =>	animation_choice<=43;
			when 2396 =>	animation_choice<=44;
			when 2397 =>	animation_choice<=45;

			when 2398 =>	animation_choice<=45;
			when 2399 =>	animation_choice<=44;
			when 2400 =>	animation_choice<=43;
			when 2401 =>	animation_choice<=42;
			--FIN POR HACER
			when 2402 =>	animation_choice<=2;
			when 2403 =>	animation_choice<=3;
			when 2404 =>	animation_choice<=4;
			when 2405 =>	animation_choice<=5;
			when 2406 =>	animation_choice<=6;
			when 2407 =>	animation_choice<=7;
			when 2408 =>	animation_choice<=8;
			when 2409 =>	animation_choice<=9;
		
			when 2410 =>	animation_choice<=0;
		
			when 2411 =>	animation_choice<=10;
			when 2412 =>	animation_choice<=11;
			when 2413 =>	animation_choice<=12;
			when 2414 =>	animation_choice<=13;
			when 2415 =>	animation_choice<=14;
			when 2416 =>	animation_choice<=15;
			when 2417 =>	animation_choice<=16;
			when 2418 =>	animation_choice<=17;
			
			when 2419 =>	animation_choice<=0;
			
			when 2420 =>	animation_choice<=9;
			when 2421 =>	animation_choice<=8;
			when 2422 =>	animation_choice<=7;
			when 2423 =>	animation_choice<=6;
			when 2424 =>	animation_choice<=5;
			when 2425 =>	animation_choice<=4;
			when 2426 =>	animation_choice<=3;
			when 2427 =>	animation_choice<=2;
		
			when 2428 =>	animation_choice<=0;
			
			when 2429 =>	animation_choice<=17;
			when 2430 =>	animation_choice<=16;
			when 2431 =>	animation_choice<=15;
			when 2432 =>	animation_choice<=14;
			when 2433 =>	animation_choice<=13;
			when 2434 =>	animation_choice<=12;
			when 2435 =>	animation_choice<=11;
			when 2436 =>	animation_choice<=10;
		
			when 2437 =>	animation_choice<=0;
			
			when 2438 =>	animation_choice<=46;
			when 2439 =>	animation_choice<=47;
			when 2440 =>	animation_choice<=48;
			when 2441 =>	animation_choice<=49;
			when 2442 =>	animation_choice<=50;
			when 2443 =>	animation_choice<=51;
			when 2444 =>	animation_choice<=52;
			when 2445 =>	animation_choice<=53;
			when 2446 =>	animation_choice<=54;
			when 2447 =>	animation_choice<=55;
			when 2448 =>	animation_choice<=56;
			when 2449 =>	animation_choice<=57;
			when 2450 =>	animation_choice<=58;
			when 2451 =>	animation_choice<=59;
			when 2452 =>	animation_choice<=60;
			when 2453 =>	animation_choice<=61;
			when 2454 =>	animation_choice<=62;
			when 2455 =>	animation_choice<=63;
			when 2456 =>	animation_choice<=64;
			when 2457 =>	animation_choice<=65;
			when 2458 =>	animation_choice<=66;
			when 2459 =>	animation_choice<=67;
			when 2460 =>	animation_choice<=68;
			when 2461 =>	animation_choice<=69;
			when 2462 =>	animation_choice<=70;
			when 2463 =>	animation_choice<=71;
			when 2464 =>	animation_choice<=72;
			when 2465 =>	animation_choice<=73;
			when 2466 =>	animation_choice<=74;
			
			--when 2438 =>	animation_choice<=46;
			when 2467 =>	animation_choice<=47;
			when 2468 =>	animation_choice<=48;
			when 2469 =>	animation_choice<=49;
			when 2470 =>	animation_choice<=50;
			when 2471 =>	animation_choice<=51;
			when 2472 =>	animation_choice<=52;
			when 2473 =>	animation_choice<=53;
			when 2474 =>	animation_choice<=54;
			when 2475 =>	animation_choice<=55;
			when 2476 =>	animation_choice<=56;
			when 2477 =>	animation_choice<=57;
			when 2478 =>	animation_choice<=58;
			when 2479 =>	animation_choice<=59;
			when 2480 =>	animation_choice<=60;
			when 2481 =>	animation_choice<=61;
			when 2482 =>	animation_choice<=62;
			when 2483 =>	animation_choice<=63;
			when 2484 =>	animation_choice<=64;
			when 2485 =>	animation_choice<=65;
			when 2486 =>	animation_choice<=66;
			when 2487 =>	animation_choice<=67;
			when 2488 =>	animation_choice<=68;
			when 2489 =>	animation_choice<=69;
			when 2490 =>	animation_choice<=70;
			when 2491 =>	animation_choice<=71;
			when 2492 =>	animation_choice<=72;
			when 2493 =>	animation_choice<=73;
			when 2494 =>	animation_choice<=74;
			
			when 2495 to 2499 =>	animation_choice<=76;
			when 2500 to 2503 =>	animation_choice<=0;
		
			when 2504 to 2507 =>	animation_choice<=76;
			when 2508 to 2511 =>	animation_choice<=0;
			
			when 2512 to 2515 =>	animation_choice<=76;
			when 2516 to 2519 =>	animation_choice<=0;
			
			when 2520 to 2521 =>	animation_choice<=76;
			when 2522 to 2525=>	animation_choice<=0;
			
			when 2526 to 2529 =>	animation_choice<=76;
			when 2530 to 2533 =>	animation_choice<=0;
		
			when 2534 to 2537 =>	animation_choice<=76;
			when 2538 to 2541 =>	animation_choice<=0;
			
			when 2542 to 2545 =>	animation_choice<=76;
			when 2546 to 2549 =>	animation_choice<=0;
			
			when 2550 to 2551 =>	animation_choice<=76;
			when 2552 to 2555=>	animation_choice<=0;
			
			when 2556 to 2559 =>	animation_choice<=76;
			when 2560 to 2563 =>	animation_choice<=0;
		
			when 2564 to 2567 =>	animation_choice<=76;
			when 2568 to 2571 =>	animation_choice<=0;
			
			when 2572 to 2575 =>	animation_choice<=76;
			when 2576 to 2579 =>	animation_choice<=0;
			
			when 2580 to 2581 =>	animation_choice<=76;
			when 2582 to 2585=>	animation_choice<=0;
			
			when 2586 to 2589 =>	animation_choice<=76;
			when 2590 to 2593 =>	animation_choice<=0;
		
			when 2594 to 2597 =>	animation_choice<=76;
			when 2598 to 2601 =>	animation_choice<=0;
			
			when 2602 to 2630 =>	animation_choice<=75;
			
			when 2631 =>	animation_choice<=77;
			when 2632 =>	animation_choice<=78;
			when 2633 =>	animation_choice<=79;
			when 2634 =>	animation_choice<=80;
			when 2635 =>	animation_choice<=81;
			when 2636 =>	animation_choice<=82;
			when 2637 =>	animation_choice<=83;
			
			when others => animation_choice<=0;
			end case;
end process;

end ARC;
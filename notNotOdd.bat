@echo off

:restart
echo Starting notNotOdd...
node index.js

if %ERRORLEVEL%==0 (
    REM If the exit code is 0, the script exited normally
    echo Script exited normally.
    exit
) else (
    REM Account for heisenbugs
    echo Script crashed with exit code %ERRORLEVEL%, restarting in 5 seconds...
    REM Wait for 5 seconds before restarting the script
    timeout /t 5
    REM Go back to the start of the script to restart
    goto restart
)

REM Author: Moosieus
REM Date: 12/23/2023
REM Version: 1.0

REM                     GNU GENERAL PUBLIC LICENSE
REM                        Version 3, 29 June 2007
REM 
REM  Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
REM  Everyone is permitted to copy and distribute verbatim copies
REM  of this license document, but changing it is not allowed.
REM 
REM                             Preamble
REM 
REM   The GNU General Public License is a free, copyleft license for
REM software and other kinds of works.
REM 
REM   The licenses for most software and other practical works are designed
REM to take away your freedom to share and change the works.  By contrast,
REM the GNU General Public License is intended to guarantee your freedom to
REM share and change all versions of a program--to make sure it remains free
REM software for all its users.  We, the Free Software Foundation, use the
REM GNU General Public License for most of our software; it applies also to
REM any other work released this way by its authors.  You can apply it to
REM your programs, too.
REM 
REM   When we speak of free software, we are referring to freedom, not
REM price.  Our General Public Licenses are designed to make sure that you
REM have the freedom to distribute copies of free software (and charge for
REM them if you wish), that you receive source code or can get it if you
REM want it, that you can change the software or use pieces of it in new
REM free programs, and that you know you can do these things.
REM 
REM   To protect your rights, we need to prevent others from denying you
REM these rights or asking you to surrender the rights.  Therefore, you have
REM certain responsibilities if you distribute copies of the software, or if
REM you modify it: responsibilities to respect the freedom of others.
REM 
REM   For example, if you distribute copies of such a program, whether
REM gratis or for a fee, you must pass on to the recipients the same
REM freedoms that you received.  You must make sure that they, too, receive
REM or can get the source code.  And you must show them these terms so they
REM know their rights.
REM 
REM   Developers that use the GNU GPL protect your rights with two steps:
REM (1) assert copyright on the software, and (2) offer you this License
REM giving you legal permission to copy, distribute and/or modify it.
REM 
REM   For the developers' and authors' protection, the GPL clearly explains
REM that there is no warranty for this free software.  For both users' and
REM authors' sake, the GPL requires that modified versions be marked as
REM changed, so that their problems will not be attributed erroneously to
REM authors of previous versions.
REM 
REM   Some devices are designed to deny users access to install or run
REM modified versions of the software inside them, although the manufacturer
REM can do so.  This is fundamentally incompatible with the aim of
REM protecting users' freedom to change the software.  The systematic
REM pattern of such abuse occurs in the area of products for individuals to
REM use, which is precisely where it is most unacceptable.  Therefore, we
REM have designed this version of the GPL to prohibit the practice for those
REM products.  If such problems arise substantially in other domains, we
REM stand ready to extend this provision to those domains in future versions
REM of the GPL, as needed to protect the freedom of users.
REM 
REM   Finally, every program is threatened constantly by software patents.
REM States should not allow patents to restrict development and use of
REM software on general-purpose computers, but in those that do, we wish to
REM avoid the special danger that patents applied to a free program could
REM make it effectively proprietary.  To prevent this, the GPL assures that
REM patents cannot be used to render the program non-free.
REM 
REM   The precise terms and conditions for copying, distribution and
REM modification follow.
REM 
REM                        TERMS AND CONDITIONS
REM 
REM   0. Definitions.
REM 
REM   "This License" refers to version 3 of the GNU General Public License.
REM 
REM   "Copyright" also means copyright-like laws that apply to other kinds of
REM works, such as semiconductor masks.
REM 
REM   "The Program" refers to any copyrightable work licensed under this
REM License.  Each licensee is addressed as "you".  "Licensees" and
REM "recipients" may be individuals or organizations.
REM 
REM   To "modify" a work means to copy from or adapt all or part of the work
REM in a fashion requiring copyright permission, other than the making of an
REM exact copy.  The resulting work is called a "modified version" of the
REM earlier work or a work "based on" the earlier work.
REM 
REM   A "covered work" means either the unmodified Program or a work based
REM on the Program.
REM 
REM   To "propagate" a work means to do anything with it that, without
REM permission, would make you directly or secondarily liable for
REM infringement under applicable copyright law, except executing it on a
REM computer or modifying a private copy.  Propagation includes copying,
REM distribution (with or without modification), making available to the
REM public, and in some countries other activities as well.
REM 
REM   To "convey" a work means any kind of propagation that enables other
REM parties to make or receive copies.  Mere interaction with a user through
REM a computer network, with no transfer of a copy, is not conveying.
REM 
REM   An interactive user interface displays "Appropriate Legal Notices"
REM to the extent that it includes a convenient and prominently visible
REM feature that (1) displays an appropriate copyright notice, and (2)
REM tells the user that there is no warranty for the work (except to the
REM extent that warranties are provided), that licensees may convey the
REM work under this License, and how to view a copy of this License.  If
REM the interface presents a list of user commands or options, such as a
REM menu, a prominent item in the list meets this criterion.
REM 
REM   1. Source Code.
REM 
REM   The "source code" for a work means the preferred form of the work
REM for making modifications to it.  "Object code" means any non-source
REM form of a work.
REM 
REM   A "Standard Interface" means an interface that either is an official
REM standard defined by a recognized standards body, or, in the case of
REM interfaces specified for a particular programming language, one that
REM is widely used among developers working in that language.
REM 
REM   The "System Libraries" of an executable work include anything, other
REM than the work as a whole, that (a) is included in the normal form of
REM packaging a Major Component, but which is not part of that Major
REM Component, and (b) serves only to enable use of the work with that
REM Major Component, or to implement a Standard Interface for which an
REM implementation is available to the public in source code form.  A
REM "Major Component", in this context, means a major essential component
REM (kernel, window system, and so on) of the specific operating system
REM (if any) on which the executable work runs, or a compiler used to
REM produce the work, or an object code interpreter used to run it.
REM 
REM   The "Corresponding Source" for a work in object code form means all
REM the source code needed to generate, install, and (for an executable
REM work) run the object code and to modify the work, including scripts to
REM control those activities.  However, it does not include the work's
REM System Libraries, or general-purpose tools or generally available free
REM programs which are used unmodified in performing those activities but
REM which are not part of the work.  For example, Corresponding Source
REM includes interface definition files associated with source files for
REM the work, and the source code for shared libraries and dynamically
REM linked subprograms that the work is specifically designed to require,
REM such as by intimate data communication or control flow between those
REM subprograms and other parts of the work.
REM 
REM   The Corresponding Source need not include anything that users
REM can regenerate automatically from other parts of the Corresponding
REM Source.
REM 
REM   The Corresponding Source for a work in source code form is that
REM same work.
REM 
REM   2. Basic Permissions.
REM 
REM   All rights granted under this License are granted for the term of
REM copyright on the Program, and are irrevocable provided the stated
REM conditions are met.  This License explicitly affirms your unlimited
REM permission to run the unmodified Program.  The output from running a
REM covered work is covered by this License only if the output, given its
REM content, constitutes a covered work.  This License acknowledges your
REM rights of fair use or other equivalent, as provided by copyright law.
REM 
REM   You may make, run and propagate covered works that you do not
REM convey, without conditions so long as your license otherwise remains
REM in force.  You may convey covered works to others for the sole purpose
REM of having them make modifications exclusively for you, or provide you
REM with facilities for running those works, provided that you comply with
REM the terms of this License in conveying all material for which you do
REM not control copyright.  Those thus making or running the covered works
REM for you must do so exclusively on your behalf, under your direction
REM and control, on terms that prohibit them from making any copies of
REM your copyrighted material outside their relationship with you.
REM 
REM   Conveying under any other circumstances is permitted solely under
REM the conditions stated below.  Sublicensing is not allowed; section 10
REM makes it unnecessary.
REM 
REM   3. Protecting Users' Legal Rights From Anti-Circumvention Law.
REM 
REM   No covered work shall be deemed part of an effective technological
REM measure under any applicable law fulfilling obligations under article
REM 11 of the WIPO copyright treaty adopted on 20 December 1996, or
REM similar laws prohibiting or restricting circumvention of such
REM measures.
REM 
REM   When you convey a covered work, you waive any legal power to forbid
REM circumvention of technological measures to the extent such circumvention
REM is effected by exercising rights under this License with respect to
REM the covered work, and you disclaim any intention to limit operation or
REM modification of the work as a means of enforcing, against the work's
REM users, your or third parties' legal rights to forbid circumvention of
REM technological measures.
REM 
REM   4. Conveying Verbatim Copies.
REM 
REM   You may convey verbatim copies of the Program's source code as you
REM receive it, in any medium, provided that you conspicuously and
REM appropriately publish on each copy an appropriate copyright notice;
REM keep intact all notices stating that this License and any
REM non-permissive terms added in accord with section 7 apply to the code;
REM keep intact all notices of the absence of any warranty; and give all
REM recipients a copy of this License along with the Program.
REM 
REM   You may charge any price or no price for each copy that you convey,
REM and you may offer support or warranty protection for a fee.
REM 
REM   5. Conveying Modified Source Versions.
REM 
REM   You may convey a work based on the Program, or the modifications to
REM produce it from the Program, in the form of source code under the
REM terms of section 4, provided that you also meet all of these conditions:
REM 
REM     a) The work must carry prominent notices stating that you modified
REM     it, and giving a relevant date.
REM 
REM     b) The work must carry prominent notices stating that it is
REM     released under this License and any conditions added under section
REM     7.  This requirement modifies the requirement in section 4 to
REM     "keep intact all notices".
REM 
REM     c) You must license the entire work, as a whole, under this
REM     License to anyone who comes into possession of a copy.  This
REM     License will therefore apply, along with any applicable section 7
REM     additional terms, to the whole of the work, and all its parts,
REM     regardless of how they are packaged.  This License gives no
REM     permission to license the work in any other way, but it does not
REM     invalidate such permission if you have separately received it.
REM 
REM     d) If the work has interactive user interfaces, each must display
REM     Appropriate Legal Notices; however, if the Program has interactive
REM     interfaces that do not display Appropriate Legal Notices, your
REM     work need not make them do so.
REM 
REM   A compilation of a covered work with other separate and independent
REM works, which are not by their nature extensions of the covered work,
REM and which are not combined with it such as to form a larger program,
REM in or on a volume of a storage or distribution medium, is called an
REM "aggregate" if the compilation and its resulting copyright are not
REM used to limit the access or legal rights of the compilation's users
REM beyond what the individual works permit.  Inclusion of a covered work
REM in an aggregate does not cause this License to apply to the other
REM parts of the aggregate.
REM 
REM   6. Conveying Non-Source Forms.
REM 
REM   You may convey a covered work in object code form under the terms
REM of sections 4 and 5, provided that you also convey the
REM machine-readable Corresponding Source under the terms of this License,
REM in one of these ways:
REM 
REM     a) Convey the object code in, or embodied in, a physical product
REM     (including a physical distribution medium), accompanied by the
REM     Corresponding Source fixed on a durable physical medium
REM     customarily used for software interchange.
REM 
REM     b) Convey the object code in, or embodied in, a physical product
REM     (including a physical distribution medium), accompanied by a
REM     written offer, valid for at least three years and valid for as
REM     long as you offer spare parts or customer support for that product
REM     model, to give anyone who possesses the object code either (1) a
REM     copy of the Corresponding Source for all the software in the
REM     product that is covered by this License, on a durable physical
REM     medium customarily used for software interchange, for a price no
REM     more than your reasonable cost of physically performing this
REM     conveying of source, or (2) access to copy the
REM     Corresponding Source from a network server at no charge.
REM 
REM     c) Convey individual copies of the object code with a copy of the
REM     written offer to provide the Corresponding Source.  This
REM     alternative is allowed only occasionally and noncommercially, and
REM     only if you received the object code with such an offer, in accord
REM     with subsection 6b.
REM 
REM     d) Convey the object code by offering access from a designated
REM     place (gratis or for a charge), and offer equivalent access to the
REM     Corresponding Source in the same way through the same place at no
REM     further charge.  You need not require recipients to copy the
REM     Corresponding Source along with the object code.  If the place to
REM     copy the object code is a network server, the Corresponding Source
REM     may be on a different server (operated by you or a third party)
REM     that supports equivalent copying facilities, provided you maintain
REM     clear directions next to the object code saying where to find the
REM     Corresponding Source.  Regardless of what server hosts the
REM     Corresponding Source, you remain obligated to ensure that it is
REM     available for as long as needed to satisfy these requirements.
REM 
REM     e) Convey the object code using peer-to-peer transmission, provided
REM     you inform other peers where the object code and Corresponding
REM     Source of the work are being offered to the general public at no
REM     charge under subsection 6d.
REM 
REM   A separable portion of the object code, whose source code is excluded
REM from the Corresponding Source as a System Library, need not be
REM included in conveying the object code work.
REM 
REM   A "User Product" is either (1) a "consumer product", which means any
REM tangible personal property which is normally used for personal, family,
REM or household purposes, or (2) anything designed or sold for incorporation
REM into a dwelling.  In determining whether a product is a consumer product,
REM doubtful cases shall be resolved in favor of coverage.  For a particular
REM product received by a particular user, "normally used" refers to a
REM typical or common use of that class of product, regardless of the status
REM of the particular user or of the way in which the particular user
REM actually uses, or expects or is expected to use, the product.  A product
REM is a consumer product regardless of whether the product has substantial
REM commercial, industrial or non-consumer uses, unless such uses represent
REM the only significant mode of use of the product.
REM 
REM   "Installation Information" for a User Product means any methods,
REM procedures, authorization keys, or other information required to install
REM and execute modified versions of a covered work in that User Product from
REM a modified version of its Corresponding Source.  The information must
REM suffice to ensure that the continued functioning of the modified object
REM code is in no case prevented or interfered with solely because
REM modification has been made.
REM 
REM   If you convey an object code work under this section in, or with, or
REM specifically for use in, a User Product, and the conveying occurs as
REM part of a transaction in which the right of possession and use of the
REM User Product is transferred to the recipient in perpetuity or for a
REM fixed term (regardless of how the transaction is characterized), the
REM Corresponding Source conveyed under this section must be accompanied
REM by the Installation Information.  But this requirement does not apply
REM if neither you nor any third party retains the ability to install
REM modified object code on the User Product (for example, the work has
REM been installed in ROM).
REM 
REM   The requirement to provide Installation Information does not include a
REM requirement to continue to provide support service, warranty, or updates
REM for a work that has been modified or installed by the recipient, or for
REM the User Product in which it has been modified or installed.  Access to a
REM network may be denied when the modification itself materially and
REM adversely affects the operation of the network or violates the rules and
REM protocols for communication across the network.
REM 
REM   Corresponding Source conveyed, and Installation Information provided,
REM in accord with this section must be in a format that is publicly
REM documented (and with an implementation available to the public in
REM source code form), and must require no special password or key for
REM unpacking, reading or copying.
REM 
REM   7. Additional Terms.
REM 
REM   "Additional permissions" are terms that supplement the terms of this
REM License by making exceptions from one or more of its conditions.
REM Additional permissions that are applicable to the entire Program shall
REM be treated as though they were included in this License, to the extent
REM that they are valid under applicable law.  If additional permissions
REM apply only to part of the Program, that part may be used separately
REM under those permissions, but the entire Program remains governed by
REM this License without regard to the additional permissions.
REM 
REM   When you convey a copy of a covered work, you may at your option
REM remove any additional permissions from that copy, or from any part of
REM it.  (Additional permissions may be written to require their own
REM removal in certain cases when you modify the work.)  You may place
REM additional permissions on material, added by you to a covered work,
REM for which you have or can give appropriate copyright permission.
REM 
REM   Notwithstanding any other provision of this License, for material you
REM add to a covered work, you may (if authorized by the copyright holders of
REM that material) supplement the terms of this License with terms:
REM 
REM     a) Disclaiming warranty or limiting liability differently from the
REM     terms of sections 15 and 16 of this License; or
REM 
REM     b) Requiring preservation of specified reasonable legal notices or
REM     author attributions in that material or in the Appropriate Legal
REM     Notices displayed by works containing it; or
REM 
REM     c) Prohibiting misrepresentation of the origin of that material, or
REM     requiring that modified versions of such material be marked in
REM     reasonable ways as different from the original version; or
REM 
REM     d) Limiting the use for publicity purposes of names of licensors or
REM     authors of the material; or
REM 
REM     e) Declining to grant rights under trademark law for use of some
REM     trade names, trademarks, or service marks; or
REM 
REM     f) Requiring indemnification of licensors and authors of that
REM     material by anyone who conveys the material (or modified versions of
REM     it) with contractual assumptions of liability to the recipient, for
REM     any liability that these contractual assumptions directly impose on
REM     those licensors and authors.
REM 
REM   All other non-permissive additional terms are considered "further
REM restrictions" within the meaning of section 10.  If the Program as you
REM received it, or any part of it, contains a notice stating that it is
REM governed by this License along with a term that is a further
REM restriction, you may remove that term.  If a license document contains
REM a further restriction but permits relicensing or conveying under this
REM License, you may add to a covered work material governed by the terms
REM of that license document, provided that the further restriction does
REM not survive such relicensing or conveying.
REM 
REM   If you add terms to a covered work in accord with this section, you
REM must place, in the relevant source files, a statement of the
REM additional terms that apply to those files, or a notice indicating
REM where to find the applicable terms.
REM 
REM   Additional terms, permissive or non-permissive, may be stated in the
REM form of a separately written license, or stated as exceptions;
REM the above requirements apply either way.
REM 
REM   8. Termination.
REM 
REM   You may not propagate or modify a covered work except as expressly
REM provided under this License.  Any attempt otherwise to propagate or
REM modify it is void, and will automatically terminate your rights under
REM this License (including any patent licenses granted under the third
REM paragraph of section 11).
REM 
REM   However, if you cease all violation of this License, then your
REM license from a particular copyright holder is reinstated (a)
REM provisionally, unless and until the copyright holder explicitly and
REM finally terminates your license, and (b) permanently, if the copyright
REM holder fails to notify you of the violation by some reasonable means
REM prior to 60 days after the cessation.
REM 
REM   Moreover, your license from a particular copyright holder is
REM reinstated permanently if the copyright holder notifies you of the
REM violation by some reasonable means, this is the first time you have
REM received notice of violation of this License (for any work) from that
REM copyright holder, and you cure the violation prior to 30 days after
REM your receipt of the notice.
REM 
REM   Termination of your rights under this section does not terminate the
REM licenses of parties who have received copies or rights from you under
REM this License.  If your rights have been terminated and not permanently
REM reinstated, you do not qualify to receive new licenses for the same
REM material under section 10.
REM 
REM   9. Acceptance Not Required for Having Copies.
REM 
REM   You are not required to accept this License in order to receive or
REM run a copy of the Program.  Ancillary propagation of a covered work
REM occurring solely as a consequence of using peer-to-peer transmission
REM to receive a copy likewise does not require acceptance.  However,
REM nothing other than this License grants you permission to propagate or
REM modify any covered work.  These actions infringe copyright if you do
REM not accept this License.  Therefore, by modifying or propagating a
REM covered work, you indicate your acceptance of this License to do so.
REM 
REM   10. Automatic Licensing of Downstream Recipients.
REM 
REM   Each time you convey a covered work, the recipient automatically
REM receives a license from the original licensors, to run, modify and
REM propagate that work, subject to this License.  You are not responsible
REM for enforcing compliance by third parties with this License.
REM 
REM   An "entity transaction" is a transaction transferring control of an
REM organization, or substantially all assets of one, or subdividing an
REM organization, or merging organizations.  If propagation of a covered
REM work results from an entity transaction, each party to that
REM transaction who receives a copy of the work also receives whatever
REM licenses to the work the party's predecessor in interest had or could
REM give under the previous paragraph, plus a right to possession of the
REM Corresponding Source of the work from the predecessor in interest, if
REM the predecessor has it or can get it with reasonable efforts.
REM 
REM   You may not impose any further restrictions on the exercise of the
REM rights granted or affirmed under this License.  For example, you may
REM not impose a license fee, royalty, or other charge for exercise of
REM rights granted under this License, and you may not initiate litigation
REM (including a cross-claim or counterclaim in a lawsuit) alleging that
REM any patent claim is infringed by making, using, selling, offering for
REM sale, or importing the Program or any portion of it.
REM 
REM   11. Patents.
REM 
REM   A "contributor" is a copyright holder who authorizes use under this
REM License of the Program or a work on which the Program is based.  The
REM work thus licensed is called the contributor's "contributor version".
REM 
REM   A contributor's "essential patent claims" are all patent claims
REM owned or controlled by the contributor, whether already acquired or
REM hereafter acquired, that would be infringed by some manner, permitted
REM by this License, of making, using, or selling its contributor version,
REM but do not include claims that would be infringed only as a
REM consequence of further modification of the contributor version.  For
REM purposes of this definition, "control" includes the right to grant
REM patent sublicenses in a manner consistent with the requirements of
REM this License.
REM 
REM   Each contributor grants you a non-exclusive, worldwide, royalty-free
REM patent license under the contributor's essential patent claims, to
REM make, use, sell, offer for sale, import and otherwise run, modify and
REM propagate the contents of its contributor version.
REM 
REM   In the following three paragraphs, a "patent license" is any express
REM agreement or commitment, however denominated, not to enforce a patent
REM (such as an express permission to practice a patent or covenant not to
REM sue for patent infringement).  To "grant" such a patent license to a
REM party means to make such an agreement or commitment not to enforce a
REM patent against the party.
REM 
REM   If you convey a covered work, knowingly relying on a patent license,
REM and the Corresponding Source of the work is not available for anyone
REM to copy, free of charge and under the terms of this License, through a
REM publicly available network server or other readily accessible means,
REM then you must either (1) cause the Corresponding Source to be so
REM available, or (2) arrange to deprive yourself of the benefit of the
REM patent license for this particular work, or (3) arrange, in a manner
REM consistent with the requirements of this License, to extend the patent
REM license to downstream recipients.  "Knowingly relying" means you have
REM actual knowledge that, but for the patent license, your conveying the
REM covered work in a country, or your recipient's use of the covered work
REM in a country, would infringe one or more identifiable patents in that
REM country that you have reason to believe are valid.
REM 
REM   If, pursuant to or in connection with a single transaction or
REM arrangement, you convey, or propagate by procuring conveyance of, a
REM covered work, and grant a patent license to some of the parties
REM receiving the covered work authorizing them to use, propagate, modify
REM or convey a specific copy of the covered work, then the patent license
REM you grant is automatically extended to all recipients of the covered
REM work and works based on it.
REM 
REM   A patent license is "discriminatory" if it does not include within
REM the scope of its coverage, prohibits the exercise of, or is
REM conditioned on the non-exercise of one or more of the rights that are
REM specifically granted under this License.  You may not convey a covered
REM work if you are a party to an arrangement with a third party that is
REM in the business of distributing software, under which you make payment
REM to the third party based on the extent of your activity of conveying
REM the work, and under which the third party grants, to any of the
REM parties who would receive the covered work from you, a discriminatory
REM patent license (a) in connection with copies of the covered work
REM conveyed by you (or copies made from those copies), or (b) primarily
REM for and in connection with specific products or compilations that
REM contain the covered work, unless you entered into that arrangement,
REM or that patent license was granted, prior to 28 March 2007.
REM 
REM   Nothing in this License shall be construed as excluding or limiting
REM any implied license or other defenses to infringement that may
REM otherwise be available to you under applicable patent law.
REM 
REM   12. No Surrender of Others' Freedom.
REM 
REM   If conditions are imposed on you (whether by court order, agreement or
REM otherwise) that contradict the conditions of this License, they do not
REM excuse you from the conditions of this License.  If you cannot convey a
REM covered work so as to satisfy simultaneously your obligations under this
REM License and any other pertinent obligations, then as a consequence you may
REM not convey it at all.  For example, if you agree to terms that obligate you
REM to collect a royalty for further conveying from those to whom you convey
REM the Program, the only way you could satisfy both those terms and this
REM License would be to refrain entirely from conveying the Program.
REM 
REM   13. Use with the GNU Affero General Public License.
REM 
REM   Notwithstanding any other provision of this License, you have
REM permission to link or combine any covered work with a work licensed
REM under version 3 of the GNU Affero General Public License into a single
REM combined work, and to convey the resulting work.  The terms of this
REM License will continue to apply to the part which is the covered work,
REM but the special requirements of the GNU Affero General Public License,
REM section 13, concerning interaction through a network will apply to the
REM combination as such.
REM 
REM   14. Revised Versions of this License.
REM 
REM   The Free Software Foundation may publish revised and/or new versions of
REM the GNU General Public License from time to time.  Such new versions will
REM be similar in spirit to the present version, but may differ in detail to
REM address new problems or concerns.
REM 
REM   Each version is given a distinguishing version number.  If the
REM Program specifies that a certain numbered version of the GNU General
REM Public License "or any later version" applies to it, you have the
REM option of following the terms and conditions either of that numbered
REM version or of any later version published by the Free Software
REM Foundation.  If the Program does not specify a version number of the
REM GNU General Public License, you may choose any version ever published
REM by the Free Software Foundation.
REM 
REM   If the Program specifies that a proxy can decide which future
REM versions of the GNU General Public License can be used, that proxy's
REM public statement of acceptance of a version permanently authorizes you
REM to choose that version for the Program.
REM 
REM   Later license versions may give you additional or different
REM permissions.  However, no additional obligations are imposed on any
REM author or copyright holder as a result of your choosing to follow a
REM later version.
REM 
REM   15. Disclaimer of Warranty.
REM 
REM   THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
REM APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
REM HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY
REM OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
REM THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
REM PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM
REM IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
REM ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
REM 
REM   16. Limitation of Liability.
REM 
REM   IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
REM WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS
REM THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY
REM GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
REM USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
REM DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD
REM PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),
REM EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
REM SUCH DAMAGES.
REM 
REM   17. Interpretation of Sections 15 and 16.
REM 
REM   If the disclaimer of warranty and limitation of liability provided
REM above cannot be given local legal effect according to their terms,
REM reviewing courts shall apply local law that most closely approximates
REM an absolute waiver of all civil liability in connection with the
REM Program, unless a warranty or assumption of liability accompanies a
REM copy of the Program in return for a fee.
REM 
REM                      END OF TERMS AND CONDITIONS
REM 
REM             How to Apply These Terms to Your New Programs
REM 
REM   If you develop a new program, and you want it to be of the greatest
REM possible use to the public, the best way to achieve this is to make it
REM free software which everyone can redistribute and change under these terms.
REM 
REM   To do so, attach the following notices to the program.  It is safest
REM to attach them to the start of each source file to most effectively
REM state the exclusion of warranty; and each file should have at least
REM the "copyright" line and a pointer to where the full notice is found.
REM 
REM     <one line to give the program's name and a brief idea of what it does.>
REM     Copyright (C) <year>  <name of author>
REM 
REM     This program is free software: you can redistribute it and/or modify
REM     it under the terms of the GNU General Public License as published by
REM     the Free Software Foundation, either version 3 of the License, or
REM     (at your option) any later version.
REM 
REM     This program is distributed in the hope that it will be useful,
REM     but WITHOUT ANY WARRANTY; without even the implied warranty of
REM     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM     GNU General Public License for more details.
REM 
REM     You should have received a copy of the GNU General Public License
REM     along with this program.  If not, see <https://www.gnu.org/licenses/>.
REM 
REM Also add information on how to contact you by electronic and paper mail.
REM 
REM   If the program does terminal interaction, make it output a short
REM notice like this when it starts in an interactive mode:
REM 
REM     <program>  Copyright (C) <year>  <name of author>
REM     This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
REM     This is free software, and you are welcome to redistribute it
REM     under certain conditions; type `show c' for details.
REM 
REM The hypothetical commands `show w' and `show c' should show the appropriate
REM parts of the General Public License.  Of course, your program's commands
REM might be different; for a GUI interface, you would use an "about box".
REM 
REM   You should also get your employer (if you work as a programmer) or school,
REM if any, to sign a "copyright disclaimer" for the program, if necessary.
REM For more information on this, and how to apply and follow the GNU GPL, see
REM <https://www.gnu.org/licenses/>.
REM 
REM   The GNU General Public License does not permit incorporating your program
REM into proprietary programs.  If your program is a subroutine library, you
REM may consider it more useful to permit linking proprietary applications with
REM the library.  If this is what you want to do, use the GNU Lesser General
REM Public License instead of this License.  But first, please read
REM <https://www.gnu.org/licenses/why-not-lgpl.html>.

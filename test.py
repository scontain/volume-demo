### A simple app to test encrypted volume with SCONE ###

def copy_file(input_f, output_f):
    with open(input_f) as f_in, open(output_f, "w") as f_out:
        for line in f_in:
            f_out.write(line)

# copy input file to encrypted volume, i.e., encrypt input file
copy_file("/demo/input/input.txt", "/demo/encrypted_volume/input.txt")

# check if this app can decrypt input file in encrypted volume
print("=====================================================")
print("----Verify if reading encrypted input is possible----")

with open("/demo/encrypted_volume/input.txt", "r", encoding="utf-8") as f:
    for line in f: print(line)

print("Finished!")

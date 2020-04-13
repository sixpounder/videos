// Generated by protoc-gen-vala 0.1.0 from protobuf/authority_keys.proto, do not edit

public class AuthorityKeys : Protobuf.Message
{
    public class Key : Protobuf.Message
    {
        public GLib.ByteArray fingerprint;
        public GLib.ByteArray public_key;

        public Key ()
        {
            this.fingerprint = null;
            this.public_key = null;
        }

        public Key.from_data (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
        {
            decode (buffer, data_length);
        }

        public override bool decode (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
        {
            size_t end;
            if (data_length < 0)
                end = buffer.buffer.length;
            else
                end = buffer.read_index + data_length;
            var have_fingerprint = false;
            var have_public_key = false;

            this.fingerprint = null;
            this.public_key = null;
            while (buffer.read_index < end)
            {
                var key = buffer.decode_varint ();
                var wire_type = key & 0x7;
                var field_number = key >> 3;

                if (field_number == 1 && wire_type == 2)
                {
                    this.fingerprint = buffer.decode_bytes ((size_t) buffer.decode_varint ());
                    have_fingerprint = true;
                }
                else if (field_number == 2 && wire_type == 2)
                {
                    this.public_key = buffer.decode_bytes ((size_t) buffer.decode_varint ());
                    have_public_key = true;
                }
                else
                    this.unknown_fields.prepend (buffer.decode_unknown_field (key));
            }

            if (buffer.read_index != end)
                buffer.error = true;
            else if (!have_fingerprint || !have_public_key)
                buffer.error = true;

            return !buffer.error;
        }

        public override size_t encode (Protobuf.EncodeBuffer buffer)
        {
            size_t n_written = 0;

            foreach (var f in this.unknown_fields)
                n_written += buffer.encode_unknown_field (f);
            var public_key_length = buffer.encode_bytes (this.public_key);
            n_written += public_key_length;
            n_written += buffer.encode_varint (public_key_length);
            n_written += buffer.encode_varint (18);
            var fingerprint_length = buffer.encode_bytes (this.fingerprint);
            n_written += fingerprint_length;
            n_written += buffer.encode_varint (fingerprint_length);
            n_written += buffer.encode_varint (10);

            return n_written;
        }

        public override string to_string (string indent = "")
        {
            var text = "";

            text += indent + "fingerprint: %s\n".printf (Protobuf.bytes_to_string (this.fingerprint));
            text += indent + "public_key: %s\n".printf (Protobuf.bytes_to_string (this.public_key));

            return text;
        }
    }
    public List<Key> keys;

    public AuthorityKeys ()
    {
        this.keys = new List<Key> ();
    }

    public AuthorityKeys.from_data (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
    {
        decode (buffer, data_length);
    }

    public override bool decode (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
    {
        size_t end;
        if (data_length < 0)
            end = buffer.buffer.length;
        else
            end = buffer.read_index + data_length;

        this.keys = new List<Key> ();
        while (buffer.read_index < end)
        {
            var key = buffer.decode_varint ();
            var wire_type = key & 0x7;
            var field_number = key >> 3;

            if (field_number == 1 && wire_type == 2)
                this.keys.append (new Key.from_data (buffer, (ssize_t) buffer.decode_varint ()));
            else
                this.unknown_fields.prepend (buffer.decode_unknown_field (key));
        }

        if (buffer.read_index != end)
            buffer.error = true;

        return !buffer.error;
    }

    public override size_t encode (Protobuf.EncodeBuffer buffer)
    {
        size_t n_written = 0;

        foreach (var f in this.unknown_fields)
            n_written += buffer.encode_unknown_field (f);
        for (unowned List<Key> i = this.keys.last (); i != null; i = i.prev)
        {
            var keys_length = i.data.encode (buffer);
            n_written += keys_length;
            n_written += buffer.encode_varint (keys_length);
            n_written += buffer.encode_varint (10);
        }

        return n_written;
    }

    public override string to_string (string indent = "")
    {
        var text = "";

        foreach (unowned Key v in this.keys)
        {
            text += indent + "keys {\n";
            text += "%s".printf (v.to_string (indent + "  "));
            text += indent + "}\n";
        }

        return text;
    }
}
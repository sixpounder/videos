// Generated by protoc-gen-vala 0.1.0 from protobuf/logging.proto, do not edit

public enum EventType
{
    EVENT_TYPE_UNKNOWN = 0,
    CAST_SOCKET_CREATED = 1,
    READY_STATE_CHANGED = 2,
    CONNECTION_STATE_CHANGED = 3,
    READ_STATE_CHANGED = 4,
    WRITE_STATE_CHANGED = 5,
    ERROR_STATE_CHANGED = 6,
    CONNECT_FAILED = 7,
    TCP_SOCKET_CONNECT = 8,
    TCP_SOCKET_SET_KEEP_ALIVE = 9,
    SSL_CERT_WHITELISTED = 10,
    SSL_SOCKET_CONNECT = 11,
    SSL_INFO_OBTAINED = 12,
    DER_ENCODED_CERT_OBTAIN = 13,
    RECEIVED_CHALLENGE_REPLY = 14,
    AUTH_CHALLENGE_REPLY = 15,
    CONNECT_TIMED_OUT = 16,
    SEND_MESSAGE_FAILED = 17,
    MESSAGE_ENQUEUED = 18,
    SOCKET_WRITE = 19,
    MESSAGE_WRITTEN = 20,
    SOCKET_READ = 21,
    MESSAGE_READ = 22,
    SOCKET_CLOSED = 25,
    SSL_CERT_EXCESSIVE_LIFETIME = 26,
    CHANNEL_POLICY_ENFORCED = 27,
    TCP_SOCKET_CONNECT_COMPLETE = 28,
    SSL_SOCKET_CONNECT_COMPLETE = 29,
    SSL_SOCKET_CONNECT_FAILED = 30,
    SEND_AUTH_CHALLENGE_FAILED = 31,
    AUTH_CHALLENGE_REPLY_INVALID = 32,
    PING_WRITE_ERROR = 33,
}
public static string EventType_to_string (EventType value)
{
    switch (value)
    {
    case EventType.EVENT_TYPE_UNKNOWN:
        return "EVENT_TYPE_UNKNOWN";
    case EventType.CAST_SOCKET_CREATED:
        return "CAST_SOCKET_CREATED";
    case EventType.READY_STATE_CHANGED:
        return "READY_STATE_CHANGED";
    case EventType.CONNECTION_STATE_CHANGED:
        return "CONNECTION_STATE_CHANGED";
    case EventType.READ_STATE_CHANGED:
        return "READ_STATE_CHANGED";
    case EventType.WRITE_STATE_CHANGED:
        return "WRITE_STATE_CHANGED";
    case EventType.ERROR_STATE_CHANGED:
        return "ERROR_STATE_CHANGED";
    case EventType.CONNECT_FAILED:
        return "CONNECT_FAILED";
    case EventType.TCP_SOCKET_CONNECT:
        return "TCP_SOCKET_CONNECT";
    case EventType.TCP_SOCKET_SET_KEEP_ALIVE:
        return "TCP_SOCKET_SET_KEEP_ALIVE";
    case EventType.SSL_CERT_WHITELISTED:
        return "SSL_CERT_WHITELISTED";
    case EventType.SSL_SOCKET_CONNECT:
        return "SSL_SOCKET_CONNECT";
    case EventType.SSL_INFO_OBTAINED:
        return "SSL_INFO_OBTAINED";
    case EventType.DER_ENCODED_CERT_OBTAIN:
        return "DER_ENCODED_CERT_OBTAIN";
    case EventType.RECEIVED_CHALLENGE_REPLY:
        return "RECEIVED_CHALLENGE_REPLY";
    case EventType.AUTH_CHALLENGE_REPLY:
        return "AUTH_CHALLENGE_REPLY";
    case EventType.CONNECT_TIMED_OUT:
        return "CONNECT_TIMED_OUT";
    case EventType.SEND_MESSAGE_FAILED:
        return "SEND_MESSAGE_FAILED";
    case EventType.MESSAGE_ENQUEUED:
        return "MESSAGE_ENQUEUED";
    case EventType.SOCKET_WRITE:
        return "SOCKET_WRITE";
    case EventType.MESSAGE_WRITTEN:
        return "MESSAGE_WRITTEN";
    case EventType.SOCKET_READ:
        return "SOCKET_READ";
    case EventType.MESSAGE_READ:
        return "MESSAGE_READ";
    case EventType.SOCKET_CLOSED:
        return "SOCKET_CLOSED";
    case EventType.SSL_CERT_EXCESSIVE_LIFETIME:
        return "SSL_CERT_EXCESSIVE_LIFETIME";
    case EventType.CHANNEL_POLICY_ENFORCED:
        return "CHANNEL_POLICY_ENFORCED";
    case EventType.TCP_SOCKET_CONNECT_COMPLETE:
        return "TCP_SOCKET_CONNECT_COMPLETE";
    case EventType.SSL_SOCKET_CONNECT_COMPLETE:
        return "SSL_SOCKET_CONNECT_COMPLETE";
    case EventType.SSL_SOCKET_CONNECT_FAILED:
        return "SSL_SOCKET_CONNECT_FAILED";
    case EventType.SEND_AUTH_CHALLENGE_FAILED:
        return "SEND_AUTH_CHALLENGE_FAILED";
    case EventType.AUTH_CHALLENGE_REPLY_INVALID:
        return "AUTH_CHALLENGE_REPLY_INVALID";
    case EventType.PING_WRITE_ERROR:
        return "PING_WRITE_ERROR";
    default:
        return "%d".printf (value);
    }
}

public enum ChannelAuth
{
    SSL = 1,
    SSL_VERIFIED = 2,
}
public static string ChannelAuth_to_string (ChannelAuth value)
{
    switch (value)
    {
    case ChannelAuth.SSL:
        return "SSL";
    case ChannelAuth.SSL_VERIFIED:
        return "SSL_VERIFIED";
    default:
        return "%d".printf (value);
    }
}

public enum ReadyState
{
    READY_STATE_NONE = 1,
    READY_STATE_CONNECTING = 2,
    READY_STATE_OPEN = 3,
    READY_STATE_CLOSING = 4,
    READY_STATE_CLOSED = 5,
}
public static string ReadyState_to_string (ReadyState value)
{
    switch (value)
    {
    case ReadyState.READY_STATE_NONE:
        return "READY_STATE_NONE";
    case ReadyState.READY_STATE_CONNECTING:
        return "READY_STATE_CONNECTING";
    case ReadyState.READY_STATE_OPEN:
        return "READY_STATE_OPEN";
    case ReadyState.READY_STATE_CLOSING:
        return "READY_STATE_CLOSING";
    case ReadyState.READY_STATE_CLOSED:
        return "READY_STATE_CLOSED";
    default:
        return "%d".printf (value);
    }
}

public enum ConnectionState
{
    CONN_STATE_UNKNOWN = 1,
    CONN_STATE_TCP_CONNECT = 2,
    CONN_STATE_TCP_CONNECT_COMPLETE = 3,
    CONN_STATE_SSL_CONNECT = 4,
    CONN_STATE_SSL_CONNECT_COMPLETE = 5,
    CONN_STATE_AUTH_CHALLENGE_SEND = 6,
    CONN_STATE_AUTH_CHALLENGE_SEND_COMPLETE = 7,
    CONN_STATE_AUTH_CHALLENGE_REPLY_COMPLETE = 8,
    CONN_STATE_START_CONNECT = 9,
    CONN_STATE_FINISHED = 100,
    CONN_STATE_ERROR = 101,
    CONN_STATE_TIMEOUT = 102,
}
public static string ConnectionState_to_string (ConnectionState value)
{
    switch (value)
    {
    case ConnectionState.CONN_STATE_UNKNOWN:
        return "CONN_STATE_UNKNOWN";
    case ConnectionState.CONN_STATE_TCP_CONNECT:
        return "CONN_STATE_TCP_CONNECT";
    case ConnectionState.CONN_STATE_TCP_CONNECT_COMPLETE:
        return "CONN_STATE_TCP_CONNECT_COMPLETE";
    case ConnectionState.CONN_STATE_SSL_CONNECT:
        return "CONN_STATE_SSL_CONNECT";
    case ConnectionState.CONN_STATE_SSL_CONNECT_COMPLETE:
        return "CONN_STATE_SSL_CONNECT_COMPLETE";
    case ConnectionState.CONN_STATE_AUTH_CHALLENGE_SEND:
        return "CONN_STATE_AUTH_CHALLENGE_SEND";
    case ConnectionState.CONN_STATE_AUTH_CHALLENGE_SEND_COMPLETE:
        return "CONN_STATE_AUTH_CHALLENGE_SEND_COMPLETE";
    case ConnectionState.CONN_STATE_AUTH_CHALLENGE_REPLY_COMPLETE:
        return "CONN_STATE_AUTH_CHALLENGE_REPLY_COMPLETE";
    case ConnectionState.CONN_STATE_START_CONNECT:
        return "CONN_STATE_START_CONNECT";
    case ConnectionState.CONN_STATE_FINISHED:
        return "CONN_STATE_FINISHED";
    case ConnectionState.CONN_STATE_ERROR:
        return "CONN_STATE_ERROR";
    case ConnectionState.CONN_STATE_TIMEOUT:
        return "CONN_STATE_TIMEOUT";
    default:
        return "%d".printf (value);
    }
}

public enum ReadState
{
    READ_STATE_UNKNOWN = 1,
    READ_STATE_READ = 2,
    READ_STATE_READ_COMPLETE = 3,
    READ_STATE_DO_CALLBACK = 4,
    READ_STATE_HANDLE_ERROR = 5,
    READ_STATE_ERROR = 100,
}
public static string ReadState_to_string (ReadState value)
{
    switch (value)
    {
    case ReadState.READ_STATE_UNKNOWN:
        return "READ_STATE_UNKNOWN";
    case ReadState.READ_STATE_READ:
        return "READ_STATE_READ";
    case ReadState.READ_STATE_READ_COMPLETE:
        return "READ_STATE_READ_COMPLETE";
    case ReadState.READ_STATE_DO_CALLBACK:
        return "READ_STATE_DO_CALLBACK";
    case ReadState.READ_STATE_HANDLE_ERROR:
        return "READ_STATE_HANDLE_ERROR";
    case ReadState.READ_STATE_ERROR:
        return "READ_STATE_ERROR";
    default:
        return "%d".printf (value);
    }
}

public enum WriteState
{
    WRITE_STATE_UNKNOWN = 1,
    WRITE_STATE_WRITE = 2,
    WRITE_STATE_WRITE_COMPLETE = 3,
    WRITE_STATE_DO_CALLBACK = 4,
    WRITE_STATE_HANDLE_ERROR = 5,
    WRITE_STATE_ERROR = 100,
    WRITE_STATE_IDLE = 101,
}
public static string WriteState_to_string (WriteState value)
{
    switch (value)
    {
    case WriteState.WRITE_STATE_UNKNOWN:
        return "WRITE_STATE_UNKNOWN";
    case WriteState.WRITE_STATE_WRITE:
        return "WRITE_STATE_WRITE";
    case WriteState.WRITE_STATE_WRITE_COMPLETE:
        return "WRITE_STATE_WRITE_COMPLETE";
    case WriteState.WRITE_STATE_DO_CALLBACK:
        return "WRITE_STATE_DO_CALLBACK";
    case WriteState.WRITE_STATE_HANDLE_ERROR:
        return "WRITE_STATE_HANDLE_ERROR";
    case WriteState.WRITE_STATE_ERROR:
        return "WRITE_STATE_ERROR";
    case WriteState.WRITE_STATE_IDLE:
        return "WRITE_STATE_IDLE";
    default:
        return "%d".printf (value);
    }
}

public enum ErrorState
{
    CHANNEL_ERROR_NONE = 1,
    CHANNEL_ERROR_CHANNEL_NOT_OPEN = 2,
    CHANNEL_ERROR_AUTHENTICATION_ERROR = 3,
    CHANNEL_ERROR_CONNECT_ERROR = 4,
    CHANNEL_ERROR_SOCKET_ERROR = 5,
    CHANNEL_ERROR_TRANSPORT_ERROR = 6,
    CHANNEL_ERROR_INVALID_MESSAGE = 7,
    CHANNEL_ERROR_INVALID_CHANNEL_ID = 8,
    CHANNEL_ERROR_CONNECT_TIMEOUT = 9,
    CHANNEL_ERROR_UNKNOWN = 10,
}
public static string ErrorState_to_string (ErrorState value)
{
    switch (value)
    {
    case ErrorState.CHANNEL_ERROR_NONE:
        return "CHANNEL_ERROR_NONE";
    case ErrorState.CHANNEL_ERROR_CHANNEL_NOT_OPEN:
        return "CHANNEL_ERROR_CHANNEL_NOT_OPEN";
    case ErrorState.CHANNEL_ERROR_AUTHENTICATION_ERROR:
        return "CHANNEL_ERROR_AUTHENTICATION_ERROR";
    case ErrorState.CHANNEL_ERROR_CONNECT_ERROR:
        return "CHANNEL_ERROR_CONNECT_ERROR";
    case ErrorState.CHANNEL_ERROR_SOCKET_ERROR:
        return "CHANNEL_ERROR_SOCKET_ERROR";
    case ErrorState.CHANNEL_ERROR_TRANSPORT_ERROR:
        return "CHANNEL_ERROR_TRANSPORT_ERROR";
    case ErrorState.CHANNEL_ERROR_INVALID_MESSAGE:
        return "CHANNEL_ERROR_INVALID_MESSAGE";
    case ErrorState.CHANNEL_ERROR_INVALID_CHANNEL_ID:
        return "CHANNEL_ERROR_INVALID_CHANNEL_ID";
    case ErrorState.CHANNEL_ERROR_CONNECT_TIMEOUT:
        return "CHANNEL_ERROR_CONNECT_TIMEOUT";
    case ErrorState.CHANNEL_ERROR_UNKNOWN:
        return "CHANNEL_ERROR_UNKNOWN";
    default:
        return "%d".printf (value);
    }
}

public enum ChallengeReplyErrorType
{
    CHALLENGE_REPLY_ERROR_NONE = 1,
    CHALLENGE_REPLY_ERROR_PEER_CERT_EMPTY = 2,
    CHALLENGE_REPLY_ERROR_WRONG_PAYLOAD_TYPE = 3,
    CHALLENGE_REPLY_ERROR_NO_PAYLOAD = 4,
    CHALLENGE_REPLY_ERROR_PAYLOAD_PARSING_FAILED = 5,
    CHALLENGE_REPLY_ERROR_MESSAGE_ERROR = 6,
    CHALLENGE_REPLY_ERROR_NO_RESPONSE = 7,
    CHALLENGE_REPLY_ERROR_FINGERPRINT_NOT_FOUND = 8,
    CHALLENGE_REPLY_ERROR_CERT_PARSING_FAILED = 9,
    CHALLENGE_REPLY_ERROR_CERT_NOT_SIGNED_BY_TRUSTED_CA = 10,
    CHALLENGE_REPLY_ERROR_CANNOT_EXTRACT_PUBLIC_KEY = 11,
    CHALLENGE_REPLY_ERROR_SIGNED_BLOBS_MISMATCH = 12,
    CHALLENGE_REPLY_ERROR_TLS_CERT_VALIDITY_PERIOD_TOO_LONG = 13,
    CHALLENGE_REPLY_ERROR_TLS_CERT_VALID_START_DATE_IN_FUTURE = 14,
    CHALLENGE_REPLY_ERROR_TLS_CERT_EXPIRED = 15,
    CHALLENGE_REPLY_ERROR_CRL_INVALID = 16,
    CHALLENGE_REPLY_ERROR_CERT_REVOKED = 17,
}
public static string ChallengeReplyErrorType_to_string (ChallengeReplyErrorType value)
{
    switch (value)
    {
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_NONE:
        return "CHALLENGE_REPLY_ERROR_NONE";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_PEER_CERT_EMPTY:
        return "CHALLENGE_REPLY_ERROR_PEER_CERT_EMPTY";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_WRONG_PAYLOAD_TYPE:
        return "CHALLENGE_REPLY_ERROR_WRONG_PAYLOAD_TYPE";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_NO_PAYLOAD:
        return "CHALLENGE_REPLY_ERROR_NO_PAYLOAD";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_PAYLOAD_PARSING_FAILED:
        return "CHALLENGE_REPLY_ERROR_PAYLOAD_PARSING_FAILED";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_MESSAGE_ERROR:
        return "CHALLENGE_REPLY_ERROR_MESSAGE_ERROR";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_NO_RESPONSE:
        return "CHALLENGE_REPLY_ERROR_NO_RESPONSE";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_FINGERPRINT_NOT_FOUND:
        return "CHALLENGE_REPLY_ERROR_FINGERPRINT_NOT_FOUND";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_CERT_PARSING_FAILED:
        return "CHALLENGE_REPLY_ERROR_CERT_PARSING_FAILED";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_CERT_NOT_SIGNED_BY_TRUSTED_CA:
        return "CHALLENGE_REPLY_ERROR_CERT_NOT_SIGNED_BY_TRUSTED_CA";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_CANNOT_EXTRACT_PUBLIC_KEY:
        return "CHALLENGE_REPLY_ERROR_CANNOT_EXTRACT_PUBLIC_KEY";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_SIGNED_BLOBS_MISMATCH:
        return "CHALLENGE_REPLY_ERROR_SIGNED_BLOBS_MISMATCH";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_TLS_CERT_VALIDITY_PERIOD_TOO_LONG:
        return "CHALLENGE_REPLY_ERROR_TLS_CERT_VALIDITY_PERIOD_TOO_LONG";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_TLS_CERT_VALID_START_DATE_IN_FUTURE:
        return "CHALLENGE_REPLY_ERROR_TLS_CERT_VALID_START_DATE_IN_FUTURE";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_TLS_CERT_EXPIRED:
        return "CHALLENGE_REPLY_ERROR_TLS_CERT_EXPIRED";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_CRL_INVALID:
        return "CHALLENGE_REPLY_ERROR_CRL_INVALID";
    case ChallengeReplyErrorType.CHALLENGE_REPLY_ERROR_CERT_REVOKED:
        return "CHALLENGE_REPLY_ERROR_CERT_REVOKED";
    default:
        return "%d".printf (value);
    }
}

public class SocketEvent : Protobuf.Message
{
    public EventType type;
    public int64 timestamp_micros;
    public string details;
    public int32 net_return_value;
    public string message_namespace;
    public ReadyState ready_state;
    public ConnectionState connection_state;
    public ReadState read_state;
    public WriteState write_state;
    public ErrorState error_state;
    public ChallengeReplyErrorType challenge_reply_error_type;
    public int32 nss_error_code;

    public SocketEvent ()
    {
        this.type = 0;
        this.timestamp_micros = 0;
        this.details = "";
        this.net_return_value = 0;
        this.message_namespace = "";
        this.ready_state = 0;
        this.connection_state = 0;
        this.read_state = 0;
        this.write_state = 0;
        this.error_state = 0;
        this.challenge_reply_error_type = 0;
        this.nss_error_code = 0;
    }

    public SocketEvent.from_data (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
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

        this.type = 0;
        this.timestamp_micros = 0;
        this.details = "";
        this.net_return_value = 0;
        this.message_namespace = "";
        this.ready_state = 0;
        this.connection_state = 0;
        this.read_state = 0;
        this.write_state = 0;
        this.error_state = 0;
        this.challenge_reply_error_type = 0;
        this.nss_error_code = 0;
        while (buffer.read_index < end)
        {
            var key = buffer.decode_varint ();
            var wire_type = key & 0x7;
            var field_number = key >> 3;

            if (field_number == 1 && wire_type == 0)
                this.type = (EventType) buffer.decode_varint ();
            else if (field_number == 2 && wire_type == 0)
                this.timestamp_micros = buffer.decode_int64 ();
            else if (field_number == 3 && wire_type == 2)
                this.details = buffer.decode_string ((size_t) buffer.decode_varint ());
            else if (field_number == 4 && wire_type == 0)
                this.net_return_value = buffer.decode_int32 ();
            else if (field_number == 5 && wire_type == 2)
                this.message_namespace = buffer.decode_string ((size_t) buffer.decode_varint ());
            else if (field_number == 6 && wire_type == 0)
                this.ready_state = (ReadyState) buffer.decode_varint ();
            else if (field_number == 7 && wire_type == 0)
                this.connection_state = (ConnectionState) buffer.decode_varint ();
            else if (field_number == 8 && wire_type == 0)
                this.read_state = (ReadState) buffer.decode_varint ();
            else if (field_number == 9 && wire_type == 0)
                this.write_state = (WriteState) buffer.decode_varint ();
            else if (field_number == 10 && wire_type == 0)
                this.error_state = (ErrorState) buffer.decode_varint ();
            else if (field_number == 11 && wire_type == 0)
                this.challenge_reply_error_type = (ChallengeReplyErrorType) buffer.decode_varint ();
            else if (field_number == 12 && wire_type == 0)
                this.nss_error_code = buffer.decode_int32 ();
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
        if (this.nss_error_code != 0)
        {
            n_written += buffer.encode_int32 (this.nss_error_code);
            n_written += buffer.encode_varint (96);
        }
        if (this.challenge_reply_error_type != 0)
        {
            n_written += buffer.encode_varint (this.challenge_reply_error_type);
            n_written += buffer.encode_varint (88);
        }
        if (this.error_state != 0)
        {
            n_written += buffer.encode_varint (this.error_state);
            n_written += buffer.encode_varint (80);
        }
        if (this.write_state != 0)
        {
            n_written += buffer.encode_varint (this.write_state);
            n_written += buffer.encode_varint (72);
        }
        if (this.read_state != 0)
        {
            n_written += buffer.encode_varint (this.read_state);
            n_written += buffer.encode_varint (64);
        }
        if (this.connection_state != 0)
        {
            n_written += buffer.encode_varint (this.connection_state);
            n_written += buffer.encode_varint (56);
        }
        if (this.ready_state != 0)
        {
            n_written += buffer.encode_varint (this.ready_state);
            n_written += buffer.encode_varint (48);
        }
        if (this.message_namespace != "")
        {
            var message_namespace_length = buffer.encode_string (this.message_namespace);
            n_written += message_namespace_length;
            n_written += buffer.encode_varint (message_namespace_length);
            n_written += buffer.encode_varint (42);
        }
        if (this.net_return_value != 0)
        {
            n_written += buffer.encode_int32 (this.net_return_value);
            n_written += buffer.encode_varint (32);
        }
        if (this.details != "")
        {
            var details_length = buffer.encode_string (this.details);
            n_written += details_length;
            n_written += buffer.encode_varint (details_length);
            n_written += buffer.encode_varint (26);
        }
        if (this.timestamp_micros != 0)
        {
            n_written += buffer.encode_int64 (this.timestamp_micros);
            n_written += buffer.encode_varint (16);
        }
        if (this.type != 0)
        {
            n_written += buffer.encode_varint (this.type);
            n_written += buffer.encode_varint (8);
        }

        return n_written;
    }

    public override string to_string (string indent = "")
    {
        var text = "";

        text += indent + "type: %s\n".printf (EventType_to_string (this.type));
        text += indent + "timestamp_micros: %s\n".printf (this.timestamp_micros.to_string ());
        text += indent + "details: %s\n".printf (Protobuf.string_to_string (this.details));
        text += indent + "net_return_value: %s\n".printf (this.net_return_value.to_string ());
        text += indent + "message_namespace: %s\n".printf (Protobuf.string_to_string (this.message_namespace));
        text += indent + "ready_state: %s\n".printf (ReadyState_to_string (this.ready_state));
        text += indent + "connection_state: %s\n".printf (ConnectionState_to_string (this.connection_state));
        text += indent + "read_state: %s\n".printf (ReadState_to_string (this.read_state));
        text += indent + "write_state: %s\n".printf (WriteState_to_string (this.write_state));
        text += indent + "error_state: %s\n".printf (ErrorState_to_string (this.error_state));
        text += indent + "challenge_reply_error_type: %s\n".printf (ChallengeReplyErrorType_to_string (this.challenge_reply_error_type));
        text += indent + "nss_error_code: %s\n".printf (this.nss_error_code.to_string ());

        return text;
    }
}

public class AggregatedSocketEvent : Protobuf.Message
{
    public int32 id;
    public int32 endpoint_id;
    public ChannelAuth channel_auth_type;
    public List<SocketEvent> socket_event;
    public int64 bytes_read;
    public int64 bytes_written;

    public AggregatedSocketEvent ()
    {
        this.id = 0;
        this.endpoint_id = 0;
        this.channel_auth_type = 0;
        this.socket_event = new List<SocketEvent> ();
        this.bytes_read = 0;
        this.bytes_written = 0;
    }

    public AggregatedSocketEvent.from_data (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
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

        this.id = 0;
        this.endpoint_id = 0;
        this.channel_auth_type = 0;
        this.socket_event = new List<SocketEvent> ();
        this.bytes_read = 0;
        this.bytes_written = 0;
        while (buffer.read_index < end)
        {
            var key = buffer.decode_varint ();
            var wire_type = key & 0x7;
            var field_number = key >> 3;

            if (field_number == 1 && wire_type == 0)
                this.id = buffer.decode_int32 ();
            else if (field_number == 2 && wire_type == 0)
                this.endpoint_id = buffer.decode_int32 ();
            else if (field_number == 3 && wire_type == 0)
                this.channel_auth_type = (ChannelAuth) buffer.decode_varint ();
            else if (field_number == 4 && wire_type == 2)
                this.socket_event.append (new SocketEvent.from_data (buffer, (ssize_t) buffer.decode_varint ()));
            else if (field_number == 5 && wire_type == 0)
                this.bytes_read = buffer.decode_int64 ();
            else if (field_number == 6 && wire_type == 0)
                this.bytes_written = buffer.decode_int64 ();
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
        if (this.bytes_written != 0)
        {
            n_written += buffer.encode_int64 (this.bytes_written);
            n_written += buffer.encode_varint (48);
        }
        if (this.bytes_read != 0)
        {
            n_written += buffer.encode_int64 (this.bytes_read);
            n_written += buffer.encode_varint (40);
        }
        for (unowned List<SocketEvent> i = this.socket_event.last (); i != null; i = i.prev)
        {
            var socket_event_length = i.data.encode (buffer);
            n_written += socket_event_length;
            n_written += buffer.encode_varint (socket_event_length);
            n_written += buffer.encode_varint (34);
        }
        if (this.channel_auth_type != 0)
        {
            n_written += buffer.encode_varint (this.channel_auth_type);
            n_written += buffer.encode_varint (24);
        }
        if (this.endpoint_id != 0)
        {
            n_written += buffer.encode_int32 (this.endpoint_id);
            n_written += buffer.encode_varint (16);
        }
        if (this.id != 0)
        {
            n_written += buffer.encode_int32 (this.id);
            n_written += buffer.encode_varint (8);
        }

        return n_written;
    }

    public override string to_string (string indent = "")
    {
        var text = "";

        text += indent + "id: %s\n".printf (this.id.to_string ());
        text += indent + "endpoint_id: %s\n".printf (this.endpoint_id.to_string ());
        text += indent + "channel_auth_type: %s\n".printf (ChannelAuth_to_string (this.channel_auth_type));
        foreach (unowned SocketEvent v in this.socket_event)
        {
            text += indent + "socket_event {\n";
            text += "%s".printf (v.to_string (indent + "  "));
            text += indent + "}\n";
        }
        text += indent + "bytes_read: %s\n".printf (this.bytes_read.to_string ());
        text += indent + "bytes_written: %s\n".printf (this.bytes_written.to_string ());

        return text;
    }
}

public class Log : Protobuf.Message
{
    public List<AggregatedSocketEvent> aggregated_socket_event;
    public int32 num_evicted_aggregated_socket_events;
    public int32 num_evicted_socket_events;

    public Log ()
    {
        this.aggregated_socket_event = new List<AggregatedSocketEvent> ();
        this.num_evicted_aggregated_socket_events = 0;
        this.num_evicted_socket_events = 0;
    }

    public Log.from_data (Protobuf.DecodeBuffer buffer, ssize_t data_length = -1)
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

        this.aggregated_socket_event = new List<AggregatedSocketEvent> ();
        this.num_evicted_aggregated_socket_events = 0;
        this.num_evicted_socket_events = 0;
        while (buffer.read_index < end)
        {
            var key = buffer.decode_varint ();
            var wire_type = key & 0x7;
            var field_number = key >> 3;

            if (field_number == 1 && wire_type == 2)
                this.aggregated_socket_event.append (new AggregatedSocketEvent.from_data (buffer, (ssize_t) buffer.decode_varint ()));
            else if (field_number == 2 && wire_type == 0)
                this.num_evicted_aggregated_socket_events = buffer.decode_int32 ();
            else if (field_number == 3 && wire_type == 0)
                this.num_evicted_socket_events = buffer.decode_int32 ();
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
        if (this.num_evicted_socket_events != 0)
        {
            n_written += buffer.encode_int32 (this.num_evicted_socket_events);
            n_written += buffer.encode_varint (24);
        }
        if (this.num_evicted_aggregated_socket_events != 0)
        {
            n_written += buffer.encode_int32 (this.num_evicted_aggregated_socket_events);
            n_written += buffer.encode_varint (16);
        }
        for (unowned List<AggregatedSocketEvent> i = this.aggregated_socket_event.last (); i != null; i = i.prev)
        {
            var aggregated_socket_event_length = i.data.encode (buffer);
            n_written += aggregated_socket_event_length;
            n_written += buffer.encode_varint (aggregated_socket_event_length);
            n_written += buffer.encode_varint (10);
        }

        return n_written;
    }

    public override string to_string (string indent = "")
    {
        var text = "";

        foreach (unowned AggregatedSocketEvent v in this.aggregated_socket_event)
        {
            text += indent + "aggregated_socket_event {\n";
            text += "%s".printf (v.to_string (indent + "  "));
            text += indent + "}\n";
        }
        text += indent + "num_evicted_aggregated_socket_events: %s\n".printf (this.num_evicted_aggregated_socket_events.to_string ());
        text += indent + "num_evicted_socket_events: %s\n".printf (this.num_evicted_socket_events.to_string ());

        return text;
    }
}
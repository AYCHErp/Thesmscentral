using Frapid.Messaging;

namespace TheSmsCentral
{
    public sealed class Config : ISmsConfig
    {
        public string ApiUrl { get; set; } = "http://beta.thesmscentral.com/api/v3/sms";
        public string SenderId { get; set; }
        public string AuthenticationToken { get; set; }
        public string FromName { get; set; }
        public string FromNumber { get; set; }
        public bool Enabled { get; set; }
    }
}
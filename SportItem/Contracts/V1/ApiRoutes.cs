﻿namespace SportItem.Contracts.V1
{
    public static class ApiRoutes
    {
        public const string Root = "api";

        public const string Version = "v1";

        public const string Base = Root + "/" + Version;

        public static class Operations
        {
            public const string GetAll = Base + "/operation/GetData";

            public const string Get = Base + "/operation/GetData/{Id}";
          
        }
        
      
    }
}
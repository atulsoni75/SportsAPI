using AutoMapper;
using SportItem.Contracts.V1.Responses;
using SportItem.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace APITestAtul.MappingProfile
{
    public class ResponseToDomainProfile : Profile
    {
        public ResponseToDomainProfile()
        {
            CreateMap<Operation, SportItemResponse>().ReverseMap();
            CreateMap<Operation, OperationResponse>().ReverseMap();
        }
    }
}

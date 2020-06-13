using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using SportItem.Contracts.V1.Responses;
using SportItem.Domain;

namespace SportItem.Services
{
    public interface IOperationService
    {
        Task<List<Operation>> GetOperationAsync();
       
        Task<bool> SaveSportItemAsync(List<SportItemResponse> sportsItems);

        Task<List<SportItemResponse>> GetSportItemAsync();
    }
}
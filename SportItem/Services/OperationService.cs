using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

using SportItem.Domain;
using SportItem.Data;
using System.Net.Http;
using Newtonsoft.Json;
using SportItem.Contracts.V1.Responses;
using AutoMapper;

namespace SportItem.Services
{
    public class OperationService : IOperationService
    {
        private readonly DataContext _dataContext;
        private readonly IMapper _mapper;

        public OperationService(DataContext dataContext, IMapper mapper)
        {
            _dataContext = dataContext;
            _mapper = mapper;
        }

        public async Task<List<Operation>> GetOperationAsync()
        {
            var queryable = await _dataContext.Operations.AsQueryable().OrderByDescending(o=>o.CreatedOn).Take(100).ToListAsync();

            return queryable;
        }


        public async Task<List<SportItemResponse>> GetSportItemAsync()
        {
            using (var client = new HttpClient())
            {
                var url = new Uri($"https://www.bongobongo.ke/api/core/event/ListSports?siteId=2&langCode=en");
                var response = await client.GetAsync(url);
                string json;
                using (var content = response.Content)
                {
                    json = await content.ReadAsStringAsync();
                }
                return JsonConvert.DeserializeObject<List<SportItemResponse>>(json);

            }
        }
        
        public async Task<bool> SaveSportItemAsync(List<SportItemResponse> sportsItems)
        {
            foreach (var item in sportsItems)
            {
                var operation = _mapper.Map<Operation>(item);
                if(item.Id>0)
                {
                    var entity = _dataContext.Operations.Where(w => w.Id == item.Id).SingleOrDefault();
                    if(entity==null)
                    {
                        operation.CreatedOn = DateTime.Now;
                        _dataContext.Operations.Add(operation);
                    }
                    else //upadte entity
                    {

                    }
                }
            }
            var count = await _dataContext.SaveChangesAsync();
            return count > 0;
        }
    }
}
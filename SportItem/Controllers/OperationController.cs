using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using SportItem.Contracts.V1;
using SportItem.Contracts.V1.Responses;
using SportItem.Services;

namespace SportItem.Controllers.V1
{

    public class OperationController : Controller
    {
        private readonly IOperationService _operationService;
        private readonly IMapper _mapper;

        public OperationController(IOperationService postService, IMapper mapper)
        {
            _operationService = postService;
            _mapper = mapper;
        }

        [HttpGet(ApiRoutes.Operations.GetAll)]
      
        public async Task<IActionResult> GetAll()
        {
           
            var items = await _operationService.GetOperationAsync();
         
            return Ok(items);
        }


        [HttpGet(ApiRoutes.Operations.Get)]
        public async Task<IActionResult> Get([FromRoute] int Id)
        {
            if (Id == 1) // fetch from third party API
            {
                var sportItems = await _operationService.GetSportItemAsync();

                await _operationService.SaveSportItemAsync(sportItems);

                return Ok(sportItems);
            }
            else if(Id==0) //fetch from database
            {
                var items = await _operationService.GetOperationAsync();

                if (items == null)
                    return NotFound();

                return Ok(_mapper.Map<List<OperationResponse>>(items));
            }
            else
                return NotFound();

        }

     
    }
}
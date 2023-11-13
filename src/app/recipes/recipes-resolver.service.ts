import { Injectable } from "@angular/core";

import { DataStorageService } from "../shared/data-storage.service";
import { Recipe } from "./recipe.model";
import { ActivatedRouteSnapshot, Resolve, ResolveFn, RouterStateSnapshot } from "@angular/router";
import { Observable } from "rxjs";

@Injectable({providedIn:'root'})
export class RecipesResolverService implements Resolve<Recipe[]>{
constructor(private dataStorageService: DataStorageService){}
 resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Recipe[] | Observable<Recipe[]> | Promise<Recipe[]> {
     
 }
}

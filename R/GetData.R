#' @title Get essential data
#' @description This function is used to achieve essential data.
#' @param exampleData A character, should be one of "DrugSPCentralMatrix", "DrugSPESMatrix", "DrugSPESCMatrix", "DrugSPPvalueMatrix", "GO_SP", "Subpathways", "GSE65194expr" and "label".
#' @return Data
#' @usage GetData(exampleData)
#' @export


GetData<-function(exampleData){
  if(!exists("envData_sp")) {
    utils::data("envData_sp",package="DRviaSPCNData")
  }
  if(!exists("envData_sdf")) {
    utils::data("envData_sdf",package="DRviaSPCNData")
  }
  if (exampleData=="DrugSPCentralMatrix")
  {
    dataset<- get("DrugSPCentralMatrix",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="DrugSPESCMatrix")
  {
    dataset<- get("DrugSPESCMatrix",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="DrugSPPvalueMatrix")
  {
    dataset<- get("DrugSPPvalueMatrix",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="DrugSPESMatrix")
  {
    dataset<- get("DrugSPESMatrix",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="GO_BP")
  {
    dataset<- get("GO_BP",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="Subpathways")
  {
    dataset<- get("Subpathways",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="GSE65194expr")
  {
    dataset<- get("GSE65194expr",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="label")
  {
    dataset<- get("label",envir=envData_sp)
    return(dataset)
  }
  if (exampleData=="sdfSET")
  {
    dataset<- get("sdfSET",envir=envData_sdf)
    return(dataset)
  }
}

/*
  Table stuff for KLUMP
 */

// Guards!
#ifndef __TABLES_H_
#define __TABLES_H_

#include "Scanner.h"
#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

/* Array Information */
struct arrInfo 
{
    int range; // how many elements, 0 -> (range - 1)
    string type; // what type is each element?
};

/* Record Info */
struct recInfo 
{

};

/*********************** GLOBAL TABLE STUFF ************************/
/* Entry in GLOBAL SYMBOL TABLE */
struct GSTMember 
{
    string id;
    string type; // what kind of symbol?
    bool isConst;
    string value; // to be used if constant
    bool operator < (const GSTMember &other) const { return id < other.id; }
};
bool compareGST(const GSTMember &lhs, const GSTMember &rhs)
{
    return lhs.id < rhs.id;
}
/* Entry in GLOBAL LITERAL TABLE */
struct GLTMember 
{
    string label;
    string type;
    string value;
};

/* Entry in GLOBAL TYPE TABLE */
struct GTTMember 
{
    string typeID; // Identifier
    int size; // in bytes
    string structure; // atomic (INT,REAL,CSTRING)/array/record
    arrInfo arrayInfo;
    recInfo recordInfo;
    bool operator < (const GTTMember &other) const { return typeID < other.typeID; }
};

/*********************** LOCAL TABLE STUFF ************************/
/* Entry in LOCAL SYMBOL TABLE */
struct LSTMember 
{
    string id;
    string type;
    string offset; // int?
    bool callbyVAR; // call by VAR or VAL 
};

/* Entry in LOCAL LABEL TABLE */
struct LLTMember 
{

};
// end guard
#endif

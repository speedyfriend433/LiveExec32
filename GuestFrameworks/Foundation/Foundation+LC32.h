#import <LC32/LC32.h>
#import <Foundation/Foundation.h>

#define LC32_CONST_STR_DECL(NAME) NAME = (id){ __CFConstantStringClassReference };
#define LC32_CONST_STR_INIT(NAME) [(id)NAME bindHostSelf:LC32Dlsym(#NAME, NO)]

extern int __CFConstantStringClassReference[];

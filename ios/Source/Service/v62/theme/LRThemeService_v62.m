/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "LRThemeService_v62.h"

/**
 * @author Bruno Farache
 */
@implementation LRThemeService_v62

- (NSArray *)getThemesWithCompanyId:(long long)companyId error:(NSError **)error {
	NSDictionary *_params = @{
		@"companyId": @(companyId)
	};

	NSDictionary *_command = @{@"/theme/get-themes": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getWarThemes:(NSError **)error {
	NSDictionary *_params = @{
	};

	NSDictionary *_command = @{@"/theme/get-war-themes": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

@end
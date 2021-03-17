# lists

bicycles = ['trek', 'cannodale','redline', 'specialized']

print(bicycles)				# print the list
print(bicycles[0])			# print the first element
print(bicycles[0].title())	# print the first element capitalized
print(bicycles[0].upper())	# print the list in capital letters

print(bicycles[-1])			# print the last element

message = "My first bicycle was a " + bicycles[2].title() + "."
print(message)

#bike = bicycles.pop()		# remove the last element
#print(bike)

bicycles.sort()				# sort the elements
print(bicycles)
#del bicycles[0]
#print(bicycles)

cars = ['bmw', 'audi', 'toyota', 'subaru']
print(cars)
print(sorted(cars))
